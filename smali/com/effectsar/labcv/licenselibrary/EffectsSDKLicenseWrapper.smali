.class public Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseInterface;


# instance fields
.field private _provider:Lcom/effectsar/labcv/licenselibrary/HttpRequestProvider;

.field private mNativeWrapperPtr:J


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Lcom/effectsar/labcv/licenselibrary/HttpRequestProvider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/effectsar/labcv/licenselibrary/HttpRequestProvider;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;->mNativeWrapperPtr:J

    .line 23
    iput-object p2, p0, Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;->_provider:Lcom/effectsar/labcv/licenselibrary/HttpRequestProvider;

    .line 24
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;->nativeGetInstanceWithParam(Ljava/util/HashMap;)I

    return-void
.end method

.method public static loadLib()V
    .registers 3

    .line 13
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "licenseWrapper_jni: library load!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 16
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: licenseWrapper_jni Could not load library!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 18
    throw v0
.end method

.method private native nativeClearParams()V
.end method

.method private native nativeGetInstanceWithParam(Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private native nativeGetLicenseWithParams(Ljava/util/HashMap;ZLcom/effectsar/labcv/licenselibrary/LicenseCallback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/effectsar/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation
.end method

.method private native nativeGetParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeSetParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeUpdateLicenseWithParams(Ljava/util/HashMap;ZLcom/effectsar/labcv/licenselibrary/LicenseCallback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/effectsar/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation
.end method


# virtual methods
.method public clearParams()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;->nativeClearParams()V

    return-void
.end method

.method public getLicenseWithParams(Ljava/util/HashMap;ZLcom/effectsar/labcv/licenselibrary/LicenseCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/effectsar/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;->nativeGetLicenseWithParams(Ljava/util/HashMap;ZLcom/effectsar/labcv/licenselibrary/LicenseCallback;)I

    move-result p0

    return p0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;->nativeGetParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerHttpProvider(Lcom/effectsar/labcv/licenselibrary/HttpRequestProvider;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;->_provider:Lcom/effectsar/labcv/licenselibrary/HttpRequestProvider;

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;->nativeSetParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateLicenseWithParams(Ljava/util/HashMap;ZLcom/effectsar/labcv/licenselibrary/LicenseCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/effectsar/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/effectsar/labcv/licenselibrary/EffectsSDKLicenseWrapper;->nativeUpdateLicenseWithParams(Ljava/util/HashMap;ZLcom/effectsar/labcv/licenselibrary/LicenseCallback;)I

    move-result p0

    return p0
.end method
