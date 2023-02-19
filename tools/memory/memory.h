#pragma once

#include <stdlib.h>
#include <memory>
#include "tools/function.h"
#include "os/os_critical_section.h"
#include "tools/logs/logs.h"
// #include <optional>

namespace tools {

class Memory {
public:
	/**
	 * @brief Создать обект умного указателя для заданного типа T.
	 * Объект будет создан на куче. Можно вызывать из прерывания
	 * @tparam T Тип обекта
	 * @tparam U Множество типов для конструктора обекта T
	 * @param u Множество аргументов для констурктора объекта T
	 * @return std::unique_ptr<T, Function<T*>> Умный указатель для заданного типа T
	 */
	template<class T, class... U>
	static std::unique_ptr<T, Function<T*>> Allocate(U&&... u) {
		LogCR(LogTypes::Memory, APP_LOG_COLOR_WHITE"Memory::Allocate");
		os::CriticalSection criticalSection;
		return {new (malloc(sizeof(T))) T(std::forward<U>(u)...), &Deallocate};
	}
	// /**
	//  * @brief Создать обект умного указателя для заданного типа T.
	//  * Объект будет создан на куче. Можно вызывать из прерывания
	//  * @tparam T Тип обекта
	//  * @tparam U Множество типов для конструктора обекта T
	//  * @param u Множество аргументов для констурктора объекта T
	//  * @return auto - std::optional<std::unique_ptr<T, Function<T *>>> Опциональный тип умного указател для заданного типа T
	//  */
	// template <class T, class... U>
	// static auto Allocate(U &&...u) {
	// 	using typePointer = std::unique_ptr<T, Function<T *>>;
	// 	using typeOptional = std::optional<typePointer>;

	// 	LogCR(LogTypes::Memory, APP_LOG_COLOR_WHITE "Memory::Allocate");
	// 	os::CriticalSection criticalSection;
	// 	typeOptional optionalPtr;
	// 	typePointer pointer = {new (malloc(sizeof(T))) T(std::forward<U>(u)...), &Deallocate};
	// 	if (pointer != nullptr)
	// 		optionalPtr = std::move(pointer);
	// 	return optionalPtr;
	// }
	/**
	 * @brief Создать обект умного указателя для массива заданного типа T.
	 * Обект будет создан на куче.
	 * @tparam T Тип обекта
	 * @tparam N Размер выделяемого массива
	 * @return auto Умный указатель на маассив заданного типа T
	 */
	template<typename T, std::size_t N>
	static auto Allocate() {
		os::CriticalSection criticalSection;
		return std::unique_ptr<T, Function<T *>>{new (malloc(sizeof(T) * N)) T[N],
												 &Deallocate};
	}
	// /**
	//  * @brief Создать обект умного указателя для массива заданного типа T.
	//  * Обект будет создан на куче.
	//  * @tparam T Тип обекта
	//  * @tparam N Размер выделяемого массива
	//  * @return auto Умный указатель на маассив заданного типа T
	//  */
	// template<typename T, std::size_t N>
	// static auto Allocate() {
	// 	using typePointer = std::unique_ptr<T, Function<T *>>;
	// 	using typeOptional = std::optional<typePointer>;
	// 	os::CriticalSection criticalSection;
	// 	typeOptional optionalPtr;
	// 	typePointer pointer = {new (malloc(sizeof(T) * N)) T[N], &Deallocate};
	// 	if (pointer != nullptr)
	// 		optionalPtr = std::move(pointer);
	// 	return optionalPtr;
	// }
	/**
	 * @brief Освободить память. Можно вызывать из прерывания
	 * @tparam T Тип объекта
	 * @param p Указатель на объект типа T
	 */
	template<typename T>
	static void Deallocate(T* p) {
		LogCR(LogTypes::Memory, APP_LOG_COLOR_WHITE"Memory::Deallocate");
		p->~T();
		os::CriticalSection criticalSection;
		free(p);
	}
};

}
