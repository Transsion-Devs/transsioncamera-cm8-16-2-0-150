.class public Lcom/bef/byteeffect/GeneralParam;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParamByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 16
    invoke-static {p0}, Lcom/bef/byteeffect/GeneralParam;->nativeGetParamByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeGetParamByKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeSetParamWithKey(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetParams(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static setParamWithKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-static {p0, p1}, Lcom/bef/byteeffect/GeneralParam;->nativeSetParamWithKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setParams(Ljava/util/HashMap;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {p0}, Lcom/bef/byteeffect/GeneralParam;->nativeSetParams(Ljava/util/HashMap;)V

    return-void
.end method
