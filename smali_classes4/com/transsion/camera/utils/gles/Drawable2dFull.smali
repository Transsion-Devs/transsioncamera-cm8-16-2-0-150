.class public Lcom/transsion/camera/utils/gles/Drawable2dFull;
.super Lcom/transsion/camera/utils/gles/core/Drawable2d;
.source "SourceFile"


# static fields
.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_COORDS:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 34
    new-array v1, v0, [F

    fill-array-data v1, :array_12

    sput-object v1, Lcom/transsion/camera/utils/gles/Drawable2dFull;->FULL_RECTANGLE_COORDS:[F

    .line 40
    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lcom/transsion/camera/utils/gles/Drawable2dFull;->FULL_RECTANGLE_TEX_COORDS:[F

    return-void

    nop

    :array_12
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 48
    sget-object v0, Lcom/transsion/camera/utils/gles/Drawable2dFull;->FULL_RECTANGLE_COORDS:[F

    sget-object v1, Lcom/transsion/camera/utils/gles/Drawable2dFull;->FULL_RECTANGLE_TEX_COORDS:[F

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;-><init>([F[F)V

    return-void
.end method
