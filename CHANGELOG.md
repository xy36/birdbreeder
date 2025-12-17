# Changelog

## [1.3.0](https://github.com/xy36/birdbreeder/compare/v1.2.0...v1.3.0) (2025-12-17)


### Features

* Enhance FinancesCategoryPickerField with initial value selection and improved item display ([a465e8a](https://github.com/xy36/birdbreeder/commit/a465e8ad477285971661d7038eee09a37a8f3096))
* Refactor resource detail pages to use sheets instead of full pages and add search on footer ([1c9c5b5](https://github.com/xy36/birdbreeder/commit/1c9c5b568aec4e2de9f5d6f91e09c57e61df1037))
* Remove unused route pages and imports for details sheets in resources center ([d1dc637](https://github.com/xy36/birdbreeder/commit/d1dc637372d44e94189d73ba3870416dbe28a75a))

## [1.2.0](https://github.com/xy36/birdbreeder/compare/v1.1.0...v1.2.0) (2025-12-07)


### Features

* Improved the MaterialTheme class to utilize Google Fonts for text styling. ([4457c24](https://github.com/xy36/birdbreeder/commit/4457c242da8f4d12abebdcc3a838611529b136ea))

## [1.1.0](https://github.com/xy36/birdbreeder/compare/v1.0.0...v1.1.0) (2025-12-05)


### Features

* feat:  ([9b9dcd1](https://github.com/xy36/birdbreeder/commit/9b9dcd1b2b9ee7a36cb2ed3e555fb50318571768))
* Add AppIcons class ([7966965](https://github.com/xy36/birdbreeder/commit/7966965993dd64bcef04d5da9275c6b564551753))
* Add birth date and unknown lifecycle data to bird ([8c41e96](https://github.com/xy36/birdbreeder/commit/8c41e9621a9ce238da524b633d0aa5271404ff55))
* add brood page ([2bc718a](https://github.com/xy36/birdbreeder/commit/2bc718a3ced8d151accab83b0ee75cb0f4d282e2))
* add CustomRefreshIndicator and remove pocketbase subscriptions ([150c6c2](https://github.com/xy36/birdbreeder/commit/150c6c2e1c4b48df112a5e06ee5146bfe8b0be9e))
* add finance overview page and add finance entry ([68d96b7](https://github.com/xy36/birdbreeder/commit/68d96b7cad54ae6c9af4dfa1bf4d2ab1dc25f1e0))
* add finances and finances categories models ([e4ff339](https://github.com/xy36/birdbreeder/commit/e4ff339c661c914530cf372cba0d7f520d476f50))
* Add loading behaviour and more menu in contact and breeding pair ([d0b8f3f](https://github.com/xy36/birdbreeder/commit/d0b8f3f154cd7d692263486b39f319a98f34150f))
* add pocketbase_drift ([b4510b2](https://github.com/xy36/birdbreeder/commit/b4510b299c232e5cec092122a28bee77b86ac186))
* add search functionality to cages, species, and contacts screens ([132e4fd](https://github.com/xy36/birdbreeder/commit/132e4fd96bc0a96eab5c4cb984d0da37111dd5d5))
* Adjust focus of textfield and exchange dropdown dialog by modal bottom sheet ([0d5d239](https://github.com/xy36/birdbreeder/commit/0d5d239a47df2a9f84996c1688c9adeedd9e84a8))
* Enhance authentication flow and add clear method in PocketBaseService ([d237211](https://github.com/xy36/birdbreeder/commit/d237211fb89d91022de964803fd57aaab38ddac6))
* Enhance breeding pair details with add brood functionality and localization updates ([bfc060c](https://github.com/xy36/birdbreeder/commit/bfc060cb1c559c1d61cb584cb4e08b280847fea6))
* enhance finance category handling with improved color management and UI updates ([80a62e2](https://github.com/xy36/birdbreeder/commit/80a62e2e59769c6445a973f81c9821181c3ff397))
* Implement action menus for birds, breeding pairs, broods, and contacts with improved UI and functionality ([ec9f7e0](https://github.com/xy36/birdbreeder/commit/ec9f7e09b2c36409b06fc3c3890d1e80f9278f03))
* Implement FinancesMapper and refactor crud function of bird breeder cubit ([e656215](https://github.com/xy36/birdbreeder/commit/e6562155c6968f8f9b654145ecc5866f7cb8642f))
* Implement SnackbarService for global snackbar notifications ([880f13b](https://github.com/xy36/birdbreeder/commit/880f13ba1a2b6dfeb580e305b7ff96846f29f19d))
* Increase padding between breeding pair cards ([f86a568](https://github.com/xy36/birdbreeder/commit/f86a568336a9961624741cb76671400da09eba29))
* refactor action menus for birds, breeding pairs, broods, contacts, eggs, and finances to use centralized buildMenu methods ([ef7bd28](https://github.com/xy36/birdbreeder/commit/ef7bd28ebaf6fe611a4a2ffa69755310f66b15f7))
* Refactor bird fields and picker components ([e904a6b](https://github.com/xy36/birdbreeder/commit/e904a6b47a1462768475b0ce1f203bafca7f6cd0))
* Refactor PocketBaseService to use $PocketBase client and update collection access methods ([7df1558](https://github.com/xy36/birdbreeder/commit/7df1558a0a46e80856bd1b46b14bc0159879f970))
* refactor project structure ([e969c33](https://github.com/xy36/birdbreeder/commit/e969c33dd982b97759616790184bec7141bce051))
* reimplement auth screen (login screen previously) ([1713e6b](https://github.com/xy36/birdbreeder/commit/1713e6bdf7ac16c1e47b0578ab330f2b88bee0ec))
* This is a test ([d95ee4e](https://github.com/xy36/birdbreeder/commit/d95ee4ea0a7075b804915382926a8bbfc56e47d6))
* Use slang for language translations ([90a745d](https://github.com/xy36/birdbreeder/commit/90a745d87919905256e0aae6bd2d3889e7803a77))


### Bug Fixes

* Add eggs fetching to initial data loading in BirdBreederCubit ([f8d9b84](https://github.com/xy36/birdbreeder/commit/f8d9b8407c8599660a3ef1fdae43c29566451adb))
* add release please token ([58b760e](https://github.com/xy36/birdbreeder/commit/58b760ea994c11d6e4ca1be51143eb616dffec36))
* clean up release.yml formatting and update release type to dart ([571c698](https://github.com/xy36/birdbreeder/commit/571c6980134945b792e84a75cf113520fa7d0493))
* next try ([d061fe6](https://github.com/xy36/birdbreeder/commit/d061fe6bce6b82a7fcc1600ec4f9845ad1db23f4))
* remove pckage-name from release.yml ([e5bac7a](https://github.com/xy36/birdbreeder/commit/e5bac7a8e8d38833faea1a0b8204879114ae17d9))
* update permissions to include issues write access ([772ece0](https://github.com/xy36/birdbreeder/commit/772ece04edbcf0e546261aa3639b3a8b2baff7d1))

## 1.0.0 (2025-08-25)


### Features

* add search functionality to cages, species, and contacts screens ([132e4fd](https://github.com/xy36/birdbreeder/commit/132e4fd96bc0a96eab5c4cb984d0da37111dd5d5))
* Adjust focus of textfield and exchange dropdown dialog by modal bottom sheet ([0d5d239](https://github.com/xy36/birdbreeder/commit/0d5d239a47df2a9f84996c1688c9adeedd9e84a8))
