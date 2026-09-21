.class public Lcom/ss/android/medialib/OpenGLUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final FAIL_RES:Ljava/lang/String;

.field private static final HEIGHT:Ljava/lang/String; = "\"height\""

.field public static final NO_TEXTURE:I = -0x1

.field private static final RES:Ljava/lang/String; = "\"res\""

.field private static final TEXTURE_ID:Ljava/lang/String; = "\"textureId\""

.field private static final WIDTH:Ljava/lang/String; = "\"width\""


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 19
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\"res\""

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{%s: false}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/medialib/OpenGLUtils;->FAIL_RES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)I
    .registers 3

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, p1, v0}, Lcom/ss/android/medialib/OpenGLUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result p0

    return p0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;IZ)I
    .registers 8

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    .line 44
    new-array v2, v1, [I

    const/16 v3, 0xde1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_32

    .line 46
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 47
    aget p1, v2, v4

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2800

    const v0, 0x46180400    # 9729.0f

    .line 48
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    .line 50
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v0, 0x47012f00    # 33071.0f

    .line 52
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 54
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 57
    invoke-static {v3, v4, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_3a

    .line 59
    :cond_32
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 60
    invoke-static {v3, v4, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 61
    aput p1, v2, v4

    :goto_3a
    if-eqz p2, :cond_3f

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    :cond_3f
    aget p0, v2, v4

    return p0
.end method

.method public static loadTexture(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 25
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_9

    .line 28
    sget-object p0, Lcom/ss/android/medialib/OpenGLUtils;->FAIL_RES:Ljava/lang/String;

    return-object p0

    :cond_9
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 31
    invoke-static {p0, v0, v1}, Lcom/ss/android/medialib/OpenGLUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    .line 33
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "\"textureId\""

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v3, "\"res\""

    const-string v4, "\"width\""

    const-string v6, "\"height\""

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 33
    const-string v0, "{%s: true, %s: %d, %s: %d, %s: %d}"

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
