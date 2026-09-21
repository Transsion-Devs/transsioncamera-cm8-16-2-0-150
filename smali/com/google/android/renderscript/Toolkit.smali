.class public final Lcom/google/android/renderscript/Toolkit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/android/renderscript/Toolkit;

.field private static nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/renderscript/Toolkit;

    invoke-direct {v0}, Lcom/google/android/renderscript/Toolkit;-><init>()V

    sput-object v0, Lcom/google/android/renderscript/Toolkit;->INSTANCE:Lcom/google/android/renderscript/Toolkit;

    .line 1093
    const-string v1, "renderscript-toolkit"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1094
    invoke-direct {v0}, Lcom/google/android/renderscript/Toolkit;->createNative()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/renderscript/Toolkit;->nativeHandle:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic blur$default(Lcom/google/android/renderscript/Toolkit;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;Lcom/google/android/renderscript/Range2d;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x5

    :cond_5
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    .line 229
    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/renderscript/Toolkit;->blur(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;Lcom/google/android/renderscript/Range2d;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final native createNative()J
.end method

.method private final native nativeBlurBitmap(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILcom/google/android/renderscript/Range2d;)V
.end method


# virtual methods
.method public final blur(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12

    .line 0
    const-string v0, "inputBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/google/android/renderscript/Toolkit;->blur$default(Lcom/google/android/renderscript/Toolkit;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;Lcom/google/android/renderscript/Range2d;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final blur(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;Lcom/google/android/renderscript/Range2d;)Landroid/graphics/Bitmap;
    .registers 12

    const-string v0, "inputBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 230
    const-string v2, "blur"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v0, v1}, Lcom/google/android/renderscript/ToolkitKt;->validateBitmap$default(Ljava/lang/String;Landroid/graphics/Bitmap;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    if-gt v0, p2, :cond_15

    const/16 v1, 0x19

    if-gt p2, v1, :cond_15

    move v3, v0

    :cond_15
    if-eqz v3, :cond_38

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v0, v1, p4}, Lcom/google/android/renderscript/ToolkitKt;->validateRestriction(Ljava/lang/String;IILcom/google/android/renderscript/Range2d;)V

    if-nez p3, :cond_28

    .line 236
    invoke-static {p1}, Lcom/google/android/renderscript/ToolkitKt;->createCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_28
    move-object v4, p3

    .line 237
    sget-wide v1, Lcom/google/android/renderscript/Toolkit;->nativeHandle:J

    const-string p3, "outputBitmap"

    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/renderscript/Toolkit;->nativeBlurBitmap(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILcom/google/android/renderscript/Range2d;)V

    return-object v4

    :cond_38
    move v5, p2

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "RenderScript Toolkit blur. The radius should be between 1 and 25. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " provided."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 231
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
