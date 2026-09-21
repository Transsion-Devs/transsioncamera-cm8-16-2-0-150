.class public abstract Lcom/asa/wbcryptodecwrappercameraservice/WbcryptoDecWrapperCameraService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-string v0, "wbcryptodecwrappercameraservice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native ASA_Wbcrypto_Decrypt_String_Wrapper(Ljava/lang/String;)Ljava/lang/String;
.end method
