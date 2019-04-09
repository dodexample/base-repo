FROM alpine
ENTRYPOINT ["sh"]
CMD [ "-c", "echo -e \"\\033[31mI ain't sayin' nuthin'\\033[0m\"" ]
