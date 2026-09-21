.class public Lcom/ss/android/ttve/nativePort/TEEffectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/TEEffectUtils$QrImageListener;,
        Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;
    }
.end annotation


# static fields
.field public static final NAME_AUDIO_TIME_ALIGN_MODEL:Ljava/lang/String; = "time_align_44k.model"

.field public static final REQUIREMENT_AUDIO_AEC_MODEL:Ljava/lang/String; = "AudioAECModel"

.field public static final REQUIREMENT_AUDIO_TIME_ALIGN_MODEL:Ljava/lang/String; = "AudioTimeAlignModel"

.field public static final REQUIREMENT_TAINT_SCENE_DETECT_MODEL:Ljava/lang/String; = "TaintSceneDetectModel"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 27
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAudioAECModelName()Ljava/lang/String;
.end method

.method public static native getEffectVersion()Ljava/lang/String;
.end method

.method public static getQREncodedData(Ljava/lang/String;IILjava/util/Map;Lcom/ss/android/ttve/nativePort/TEEffectUtils$QrImageListener;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/ss/android/ttve/nativePort/TEEffectUtils$QrImageListener;",
            ")I"
        }
    .end annotation

    if-eqz p3, :cond_3c

    .line 85
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 87
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x0

    :goto_13
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_13

    :cond_3c
    const/4 v0, 0x0

    .line 93
    :cond_3d
    invoke-static {p0, p1, p2, v0, p4}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->nativeGetQREncodedDataWithWH(Ljava/lang/String;II[ILcom/ss/android/ttve/nativePort/TEEffectUtils$QrImageListener;)I

    move-result p0

    return p0
.end method

.method public static getQREncodedData(Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_3c

    .line 71
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_13

    :cond_3c
    const/4 v0, 0x0

    .line 79
    :cond_3d
    invoke-static {p0, v0, p2}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->nativeGetQREncodedData(Ljava/lang/String;[ILcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;)I

    move-result p0

    return p0
.end method

.method public static getTaintSceneDetectModelName()Ljava/lang/String;
    .registers 1

    .line 38
    const-string v0, "lens_taint_scene_detect"

    return-object v0
.end method

.method private static native nativeGetQREncodedData(Ljava/lang/String;[ILcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;)I
.end method

.method private static native nativeGetQREncodedDataWithWH(Ljava/lang/String;II[ILcom/ss/android/ttve/nativePort/TEEffectUtils$QrImageListener;)I
.end method

.method public static native nativeResizeImageWithEffect2(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
.end method

.method public static resizeImageWithEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    .registers 3

    .line 98
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->nativeResizeImageWithEffect2(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z

    move-result p0

    return p0
.end method
