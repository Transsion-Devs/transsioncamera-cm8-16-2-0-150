.class public Lcom/ss/android/ttve/common/TEGLUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FULLSCREEN_VERTICES:[F

.field private static final TAG:Ljava/lang/String; = "TEGLUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 13
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ss/android/ttve/common/TEGLUtils;->FULLSCREEN_VERTICES:[F

    return-void

    :array_a
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGLError(Ljava/lang/String;)V
    .registers 4

    .line 17
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x4

    if-ge v1, v2, :cond_38

    if-eqz v0, :cond_38

    packed-switch v0, :pswitch_data_3a

    .line 36
    :pswitch_d
    const-string v2, "unknown error"

    goto :goto_1e

    .line 25
    :pswitch_10
    const-string v2, "invalid framebuffer operation"

    goto :goto_1e

    .line 34
    :pswitch_13
    const-string v2, "out of memory"

    goto :goto_1e

    .line 28
    :pswitch_16
    const-string v2, "invalid operation"

    goto :goto_1e

    .line 31
    :pswitch_19
    const-string v2, "invalid value"

    goto :goto_1e

    .line 22
    :pswitch_1c
    const-string v2, "invalid enum"

    .line 38
    :goto_1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "After tag \"%s\" glGetError %s(0x%x) "

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TEGLUtils"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x500
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_d
        :pswitch_d
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method
