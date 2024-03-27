import React from 'react'

function Footer() {
  return (
    <>
      <footer className="relative pt-6 pb-2 mt-6">
        <div className="container mx-auto rounded-lg shadow shadow-green-600">
          <div className="flex flex-wrap items-center md:justify-between justify-center">
            <div className="w-full md:w-6/12 p-8 mx-auto text-center">
              <p className="text-sm font-pacifico text-slate-500 pr-4">Copyright { new Date().getFullYear() } drui9</p>
            </div>
          </div>
        </div>
      </footer>
    </>
  )
}

export default Footer