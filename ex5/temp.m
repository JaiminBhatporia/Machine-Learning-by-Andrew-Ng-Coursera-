for i = 1:m;
	a = Xt(1:i, :);
	b = y(1:i);
	[th] = trainLinearReg(a, b, 0);
	e(i) = (0.5/i).*sum((a*th - b).^2);
end
e