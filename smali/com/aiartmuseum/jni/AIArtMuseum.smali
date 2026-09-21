.class public abstract Lcom/aiartmuseum/jni/AIArtMuseum;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 7
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtMuseum"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aiartmuseum/jni/AIArtMuseum;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 11
    :try_start_9
    const-string v0, "aiartmuseum"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 13
    sget-object v1, Lcom/aiartmuseum/jni/AIArtMuseum;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Cannot load aiartmuseum library"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static native AIArtMuseum_JNI_CreateEngine(JLjava/lang/String;)J
.end method

.method public static native AIArtMuseum_JNI_GetVersion()Ljava/lang/String;
.end method

.method public static native AIArtMuseum_JNI_ProcessTexture(I[IIIII)J
.end method

.method public static native AIArtMuseum_JNI_ReleaseEngine()J
.end method

.method public static native AIArtMuseum_JNI_SetFeature(III)J
.end method
