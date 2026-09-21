.class public abstract Lcom/itdfacebeauty/jni/ITDFaceBeauty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LIB_NAME:Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ITDFaceBeauty"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itdfacebeauty/jni/ITDFaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 11
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_14

    const-string v0, "itdfacebeauty_prev"

    goto :goto_16

    :cond_14
    const-string v0, "itdfacebeauty"

    :goto_16
    sput-object v0, Lcom/itdfacebeauty/jni/ITDFaceBeauty;->LIB_NAME:Ljava/lang/String;

    .line 15
    :try_start_18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    .line 17
    sget-object v1, Lcom/itdfacebeauty/jni/ITDFaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/itdfacebeauty/jni/ITDFaceBeauty;->LIB_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static native ITDFB_JNI_CreateEngine(J)J
.end method

.method public static native ITDFB_JNI_GetVersion()Ljava/lang/String;
.end method

.method public static native ITDFB_JNI_ProcessTexture(I[IIII)J
.end method

.method public static native ITDFB_JNI_ReleaseEngine()J
.end method

.method public static native ITDFB_JNI_SetFeature(II)J
.end method
