.class public Lcom/obs/services/internal/utils/ReflectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ILOG:Lcom/obs/log/ILogger;

.field private static androidBase64Class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static jdkBase64DecoderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static jdkBase64EncoderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static jdkNewDecoder:Ljava/lang/Object;

.field private static jdkNewEncoder:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 28
    const-string v0, "class not found exception."

    const-class v1, Lcom/obs/services/internal/utils/ReflectUtils;

    invoke-static {v1}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v1

    sput-object v1, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    .line 42
    :try_start_a
    const-string v1, "android.util.Base64"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/obs/services/internal/utils/ReflectUtils;->androidBase64Class:Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_21

    :catch_13
    move-exception v1

    .line 44
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 45
    const-string v3, "class not found."

    invoke-interface {v2, v3, v1}, Lcom/obs/log/ILogger;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 50
    :cond_21
    :goto_21
    :try_start_21
    const-string v1, "java.util.Base64"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    const-string v2, "getEncoder"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->jdkNewEncoder:Ljava/lang/Object;

    .line 52
    const-string v2, "getDecoder"

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/obs/services/internal/utils/ReflectUtils;->jdkNewDecoder:Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_40} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_40} :catch_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_40} :catch_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_40} :catch_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_40} :catch_43
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_40} :catch_41

    goto :goto_80

    :catch_41
    move-exception v1

    goto :goto_4d

    :catch_43
    move-exception v1

    goto :goto_55

    :catch_45
    move-exception v1

    goto :goto_5d

    :catch_47
    move-exception v1

    goto :goto_65

    :catch_49
    move-exception v1

    goto :goto_6d

    :catch_4b
    move-exception v1

    goto :goto_75

    .line 66
    :goto_4d
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    const-string v3, "security exception."

    invoke-interface {v2, v3, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_80

    .line 64
    :goto_55
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    const-string v3, "nosuch method exception."

    invoke-interface {v2, v3, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_80

    .line 62
    :goto_5d
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    const-string v3, "invocation target exception."

    invoke-interface {v2, v3, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_80

    .line 60
    :goto_65
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    const-string v3, "illegal argument exception."

    invoke-interface {v2, v3, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_80

    .line 58
    :goto_6d
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    const-string v3, "illegal access exception."

    invoke-interface {v2, v3, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_80

    .line 54
    :goto_75
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 55
    invoke-interface {v2, v0, v1}, Lcom/obs/log/ILogger;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 70
    :cond_80
    :goto_80
    :try_start_80
    const-string v1, "sun.misc.BASE64Encoder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/obs/services/internal/utils/ReflectUtils;->jdkBase64EncoderClass:Ljava/lang/Class;
    :try_end_88
    .catch Ljava/lang/ClassNotFoundException; {:try_start_80 .. :try_end_88} :catch_89

    goto :goto_95

    :catch_89
    move-exception v1

    .line 72
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 73
    invoke-interface {v2, v0, v1}, Lcom/obs/log/ILogger;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 78
    :cond_95
    :goto_95
    :try_start_95
    const-string v1, "sun.misc.BASE64Decoder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/obs/services/internal/utils/ReflectUtils;->jdkBase64DecoderClass:Ljava/lang/Class;
    :try_end_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_95 .. :try_end_9d} :catch_9e

    goto :goto_aa

    :catch_9e
    move-exception v1

    .line 80
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 81
    invoke-interface {v2, v0, v1}, Lcom/obs/log/ILogger;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_aa
    :goto_aa
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBase64(Ljava/lang/String;)[B
    .registers 6

    .line 119
    sget-object v0, Lcom/obs/services/internal/utils/ReflectUtils;->androidBase64Class:Ljava/lang/Class;

    const-class v1, [B

    const-string v2, "decode"

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    .line 121
    :try_start_9
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 122
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    .line 124
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 128
    :cond_30
    sget-object v0, Lcom/obs/services/internal/utils/ReflectUtils;->jdkNewDecoder:Ljava/lang/Object;

    if-eqz v0, :cond_5a

    .line 130
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/obs/services/internal/utils/ReflectUtils;->jdkNewDecoder:Ljava/lang/Object;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_52} :catch_53

    return-object p0

    :catch_53
    move-exception p0

    .line 133
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 137
    :cond_5a
    sget-object v0, Lcom/obs/services/internal/utils/ReflectUtils;->jdkBase64DecoderClass:Ljava/lang/Class;

    if-eqz v0, :cond_86

    .line 139
    :try_start_5e
    const-string v1, "decodeBuffer"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/obs/services/internal/utils/ReflectUtils;->jdkBase64DecoderClass:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_7e} :catch_7f

    return-object p0

    :catch_7f
    move-exception p0

    .line 142
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 145
    :cond_86
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to find a base64 decoder"

    invoke-direct {p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBase64([B)Ljava/lang/String;
    .registers 7

    .line 87
    sget-object v0, Lcom/obs/services/internal/utils/ReflectUtils;->androidBase64Class:Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, [B

    const-string v3, "encode"

    if-eqz v0, :cond_33

    .line 89
    :try_start_9
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v4}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2c

    return-object v2

    :catch_2c
    move-exception p0

    .line 92
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 96
    :cond_33
    sget-object v0, Lcom/obs/services/internal/utils/ReflectUtils;->jdkNewEncoder:Ljava/lang/Object;

    const-string v4, ""

    const-string v5, "\\s"

    if-eqz v0, :cond_66

    .line 98
    :try_start_3b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->jdkNewEncoder:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5e} :catch_5f

    return-object p0

    :catch_5f
    move-exception p0

    .line 101
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 105
    :cond_66
    sget-object v0, Lcom/obs/services/internal/utils/ReflectUtils;->jdkBase64EncoderClass:Ljava/lang/Class;

    if-eqz v0, :cond_92

    .line 107
    :try_start_6a
    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 108
    sget-object v2, Lcom/obs/services/internal/utils/ReflectUtils;->jdkBase64EncoderClass:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_8a} :catch_8b

    return-object p0

    :catch_8b
    move-exception p0

    .line 111
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 115
    :cond_92
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to find a base64 encoder"

    invoke-direct {p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
