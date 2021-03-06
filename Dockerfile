FROM scaffoldeducation/php73-clear-linux

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN swupd bundle-add python3-basic --no-progress && \
	pip3 install awscli --upgrade
