import { NextResponse, NextRequest } from 'next/server';

export const middleware = async (req: NextRequest) => {
	if (req.nextUrl.pathname === '/') {
		return NextResponse.redirect(new URL('/home', req.url));
	}
	return NextResponse.next();
}
