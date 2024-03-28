import React from 'react'

function Hero() {
  return (
    <div
        className="relative max-w-md mx-auto md:max-w-2xl mt-6 min-w-0 break-words w-[90%] mb-6 shadow-green-600 shadow-lg border border-green-600 rounded-xl">
        <div className="px-6">
          <div className="flex flex-wrap">
            <div className="w-full flex">
              <div className="relative">
                <img src="https://avatars.githubusercontent.com/u/85512138?v=4"
                  className="shadow-xl rounded-full align-middle border-none absolute -m-16 -ml-12 md:-ml-16 max-w-[150px]" />
              </div>
            </div>
          </div>
          <div className="text-center mt-4 pt-12">
            <h3 className="text-5xl text-orange font-bold font-pacifico leading-normal mb-1">
              <span className="text-orange-red">He</span>ll<span className="text-orange-red">o!</span>
            </h3>
            <p className="font-mono font-bold text-xl text-green-700 leading-relaxed mb-4">
              Welcome to Druid's page.
            </p>
            <div className="mt-6 w-full mx-auto flex flex-wrap items-center justify-center space-x-8">
              <a target="_blank" className="link" href="https://github.com/Druid">
                <svg className="h-6 fill-current text-gray-900 hover:text-green-700" role="img" viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg">
                  <title>GitHub</title>
                  <path
                    d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61C4.422 18.07 3.633 17.7 3.633 17.7c-1.087-.744.084-.729.084-.729 1.205.084 1.838 1.236 1.838 1.236 1.07 1.835 2.809 1.305 3.495.998.108-.776.417-1.305.76-1.605-2.665-.3-5.466-1.332-5.466-5.93 0-1.31.465-2.38 1.235-3.22-.135-.303-.54-1.523.105-3.176 0 0 1.005-.322 3.3 1.23.96-.267 1.98-.399 3-.405 1.02.006 2.04.138 3 .405 2.28-1.552 3.285-1.23 3.285-1.23.645 1.653.24 2.873.12 3.176.765.84 1.23 1.91 1.23 3.22 0 4.61-2.805 5.625-5.475 5.92.42.36.81 1.096.81 2.22 0 1.606-.015 2.896-.015 3.286 0 .315.21.69.825.57C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12" />
                </svg>
              </a>
            </div>
            <div className="mx-auto py-2 m-4">
              <p className="font-pacifico text-orange-red">
                ... find yourself and be that.
              </p>
            </div>
          </div>
        </div>
      </div>
  )
}

export default Hero