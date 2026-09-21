.class public Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;,
        Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;,
        Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;
    }
.end annotation


# static fields
.field private static final ALPHA_UNIFORM:Ljava/lang/String; = "uAlpha"

.field private static final BOUNDS_COORDINATES:[F

.field private static final BOX_COORDINATES:[F

.field private static final COLOR_UNIFORM:Ljava/lang/String; = "uColor"

.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final COUNT_FILL_VERTEX:I = 0x4

.field private static final COUNT_LINE_VERTEX:I = 0x2

.field private static final COUNT_RECT_VERTEX:I = 0x4

.field private static final DRAW_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

.field private static final DRAW_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

.field private static final FLOAT_SIZE:I = 0x4

.field private static final INDEX_ALPHA:I = 0x4

.field private static final INDEX_COLOR:I = 0x2

.field private static final INDEX_MATRIX:I = 0x1

.field private static final INDEX_POSITION:I = 0x0

.field private static final INDEX_TEXTURE_COORD:I = 0x2

.field private static final INDEX_TEXTURE_MATRIX:I = 0x2

.field private static final INDEX_TEXTURE_SAMPLER:I = 0x3

.field private static final INITIAL_RESTORE_STATE_SIZE:I = 0x8

.field private static final MATRIX_SIZE:I = 0x10

.field private static final MATRIX_UNIFORM:Ljava/lang/String; = "uMatrix"

.field private static final MESH_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

.field private static final OES_TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTexture  ;\nvoid main() {\n  gl_FragColor = texture2D(uTexture  , vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final POSITION_ATTRIBUTE:Ljava/lang/String; = "aPosition"

.field private static final TAG:Ljava/lang/String; = "GLES20Canvas"

.field private static final TEXTURE_COORD_ATTRIBUTE:Ljava/lang/String; = "aTextureCoordinate"

.field private static final TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTexture  ;\nvoid main() {\n  gl_FragColor = texture2D(uTexture  , vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

.field private static final TEXTURE_MATRIX_UNIFORM:Ljava/lang/String; = "uTextureMatrix"

.field private static final TEXTURE_SAMPLER_UNIFORM:Ljava/lang/String; = "uTexture  "

.field private static final TEXTURE_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

.field private static final VERTEX_STRIDE:I = 0x8

.field private static final mGLId:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;


# instance fields
.field private mAlphas:[F

.field private mBoxBuffer:Ljava/nio/FloatBuffer;

.field private mBoxCoordinates:I

.field private mCountDrawLine:I

.field private mCountDrawMesh:I

.field private mCountFillRect:I

.field private mCountTextureRect:I

.field private mCurrentAlphaIndex:I

.field private mCurrentMatrixIndex:I

.field private final mDeleteBuffers:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

.field mDrawParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

.field private mDrawProgram:I

.field private mFrameBuffer:[I

.field private mHeight:I

.field private mMatrices:[F

.field mMeshParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

.field private mMeshProgram:I

.field mOesTextureParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

.field private mOesTextureProgram:I

.field private mProjectionMatrix:[F

.field private mSaveFlags:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTargetTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempColor:[F

.field private final mTempIntArray:[I

.field private final mTempMatrix:[F

.field private final mTempSourceRect:Landroid/graphics/RectF;

.field private final mTempTargetRect:Landroid/graphics/RectF;

.field private final mTempTextureMatrix:[F

.field mTextureParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

.field private mTextureProgram:I

.field private final mUnboundTextures:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    .line 37
    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->BOX_COORDINATES:[F

    const/16 v0, 0x8

    .line 50
    new-array v0, v0, [F

    fill-array-data v0, :array_46

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->BOUNDS_COORDINATES:[F

    .line 259
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20IdImpl;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20IdImpl;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mGLId:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;

    return-void

    :array_1a
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_46
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    .line 262
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x80

    .line 128
    new-array v1, v1, [F

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    const/16 v1, 0x8

    .line 129
    new-array v1, v1, [F

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mAlphas:[F

    .line 130
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mSaveFlags:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    const/4 v1, 0x0

    .line 132
    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 133
    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v2, 0x10

    .line 140
    new-array v3, v2, [F

    iput-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mProjectionMatrix:[F

    .line 206
    new-instance v3, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;

    const-string v4, "aPosition"

    invoke-direct {v3, v4}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v6, "uMatrix"

    invoke-direct {v5, v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v8, "uColor"

    invoke-direct {v7, v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    new-array v9, v8, [Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    aput-object v3, v9, v1

    const/4 v3, 0x1

    aput-object v5, v9, v3

    const/4 v5, 0x2

    aput-object v7, v9, v5

    iput-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDrawParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    .line 211
    new-instance v7, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;

    invoke-direct {v7, v4}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v9, v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v11, "uTextureMatrix"

    invoke-direct {v10, v11}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v13, "uTexture  "

    invoke-direct {v12, v13}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v15, "uAlpha"

    invoke-direct {v14, v15}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    move/from16 v16, v5

    const/4 v5, 0x5

    move/from16 v17, v8

    new-array v8, v5, [Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    aput-object v7, v8, v1

    aput-object v9, v8, v3

    aput-object v10, v8, v16

    aput-object v12, v8, v17

    const/4 v7, 0x4

    aput-object v14, v8, v7

    iput-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTextureParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    .line 218
    new-instance v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;

    invoke-direct {v8, v4}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v9, v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v10, v11}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v11, v13}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v12, v15}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-array v14, v5, [Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    aput-object v8, v14, v1

    aput-object v9, v14, v3

    aput-object v10, v14, v16

    aput-object v11, v14, v17

    aput-object v12, v14, v7

    iput-object v14, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mOesTextureParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    .line 227
    new-instance v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;

    invoke-direct {v8, v4}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v4, v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;

    const-string v9, "aTextureCoordinate"

    invoke-direct {v6, v9}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v9, v13}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v10, v15}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    new-array v5, v5, [Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    aput-object v8, v5, v1

    aput-object v4, v5, v3

    aput-object v6, v5, v16

    aput-object v9, v5, v17

    aput-object v10, v5, v7

    iput-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMeshParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    .line 235
    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    invoke-direct {v4}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;-><init>()V

    iput-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mUnboundTextures:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    .line 236
    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    invoke-direct {v4}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;-><init>()V

    iput-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDeleteBuffers:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    .line 239
    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawMesh:I

    .line 240
    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountTextureRect:I

    .line 241
    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountFillRect:I

    .line 242
    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawLine:I

    .line 246
    new-array v4, v3, [I

    iput-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mFrameBuffer:[I

    .line 249
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/16 v4, 0x20

    .line 252
    new-array v4, v4, [F

    iput-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    .line 253
    new-array v4, v7, [F

    iput-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempColor:[F

    .line 254
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    .line 255
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    .line 256
    new-array v2, v2, [F

    iput-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTextureMatrix:[F

    .line 257
    new-array v4, v3, [I

    iput-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempIntArray:[I

    .line 263
    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 264
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 265
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mAlphas:[F

    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentAlphaIndex:I

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    .line 266
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->BOX_COORDINATES:[F

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mBoxBuffer:Ljava/nio/FloatBuffer;

    .line 269
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mBoxCoordinates:I

    .line 271
    const-string/jumbo v1, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

    const v2, 0x8b31

    invoke-static {v2, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 272
    const-string/jumbo v4, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

    invoke-static {v2, v4}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 273
    const-string/jumbo v5, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

    invoke-static {v2, v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 274
    const-string v5, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    const v6, 0x8b30

    invoke-static {v6, v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v5

    .line 275
    const-string v7, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTexture  ;\nvoid main() {\n  gl_FragColor = texture2D(uTexture  , vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v6, v7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v7

    .line 276
    const-string v8, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTexture  ;\nvoid main() {\n  gl_FragColor = texture2D(uTexture  , vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v6, v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v6

    .line 280
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDrawParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    invoke-direct {v0, v1, v5, v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->assembleProgram(II[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;)I

    move-result v8

    iput v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDrawProgram:I

    .line 281
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTextureParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    invoke-direct {v0, v4, v7, v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->assembleProgram(II[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;)I

    move-result v8

    iput v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTextureProgram:I

    .line 283
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mOesTextureParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    invoke-direct {v0, v4, v6, v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->assembleProgram(II[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;)I

    move-result v8

    iput v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mOesTextureProgram:I

    .line 285
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMeshParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    invoke-direct {v0, v2, v7, v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->assembleProgram(II[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;)I

    move-result v8

    iput v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMeshProgram:I

    .line 287
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 288
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 289
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 290
    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 291
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 292
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/16 v0, 0x303

    .line 294
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 295
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method private assembleProgram(II[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;)I
    .registers 8

    .line 308
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 309
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 310
    const-string v1, "GLES20Canvas"

    if-nez v0, :cond_10

    .line 311
    const-string v2, "Could not create program"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_10
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 314
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 315
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 316
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 317
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 318
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempIntArray:[I

    const v2, 0x8b82

    const/4 v3, 0x0

    .line 320
    invoke-static {v0, v2, p0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 321
    aget p0, p0, v3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_40

    .line 322
    const-string p0, "Could not link program: "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v3

    .line 327
    :cond_40
    :goto_40
    array-length p0, p3

    if-ge v3, p0, :cond_4b

    .line 328
    aget-object p0, p3, v3

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->loadHandle(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 331
    :cond_4b
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 332
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0
.end method

.method public static checkError()V
    .registers 4

    .line 979
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_21

    .line 981
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GLES20Canvas"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    return-void
.end method

.method private static checkFramebufferStatus()V
    .registers 4

    const v0, 0x8d40

    .line 897
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_3b

    sparse-switch v0, :sswitch_data_3c

    .line 900
    const-string v1, ""

    goto :goto_1d

    .line 911
    :sswitch_12
    const-string v1, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_1d

    .line 906
    :sswitch_15
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_1d

    .line 909
    :sswitch_18
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_1d

    .line 903
    :sswitch_1b
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    .line 914
    :goto_1d
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3b
    return-void

    :sswitch_data_3c
    .sparse-switch
        0x8cd6 -> :sswitch_1b
        0x8cd7 -> :sswitch_18
        0x8cd9 -> :sswitch_15
        0x8cdd -> :sswitch_12
    .end sparse-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)V
    .registers 8

    .line 653
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getWidth()I

    move-result v0

    .line 654
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getHeight()I

    move-result v1

    .line 655
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 656
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTextureHeight()I

    move-result p2

    .line 658
    iget v3, p0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 659
    iget v3, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 660
    iget v4, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    div-float/2addr v4, p2

    iput v4, p0, Landroid/graphics/RectF;->top:F

    .line 661
    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v4, p2

    iput v4, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpl-float v2, v3, v0

    if-lez v2, :cond_41

    .line 666
    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 667
    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_41
    int-to-float v0, v1

    div-float/2addr v0, p2

    .line 670
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_5e

    .line 671
    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 672
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    :cond_5e
    return-void
.end method

.method private static copyTextureCoordinates(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/RectF;)V
    .registers 5

    .line 604
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getWidth()I

    move-result v0

    .line 605
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getHeight()I

    move-result v1

    .line 606
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->hasBorder()Z

    move-result p0

    if-eqz p0, :cond_17

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 p0, 0x1

    :goto_13
    move v2, v1

    move v1, v0

    move v0, p0

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_13

    :goto_19
    int-to-float p0, p0

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    .line 612
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static createBuffer([F)Ljava/nio/FloatBuffer;
    .registers 4

    .line 300
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    .line 301
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 303
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private draw(IIIFFFFIF)V
    .registers 10

    .line 504
    invoke-direct {p0, p2, p8, p9}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->prepareDraw(IIF)V

    move p2, p1

    .line 505
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDrawParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->draw([Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;IIFFFF)V

    return-void
.end method

.method private draw(IIIFFFFLcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;)V
    .registers 19

    .line 499
    invoke-virtual/range {p8 .. p8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getColor()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->draw(IIIFFFFIF)V

    return-void
.end method

.method private draw([Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;IIFFFF)V
    .registers 14

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 565
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setMatrix([Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;FFFF)V

    const/4 p0, 0x0

    .line 566
    aget-object p1, v1, p0

    iget p1, p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    .line 567
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 568
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 569
    invoke-static {p2, p0, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 570
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 571
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 572
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method private drawTextureRect(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 4

    .line 638
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setTextureMatrix(Landroid/graphics/RectF;)V

    .line 639
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->drawTextureRect(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;[FLandroid/graphics/RectF;)V

    return-void
.end method

.method private drawTextureRect(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;[FLandroid/graphics/RectF;)V
    .registers 13

    .line 677
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->prepareTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    move-result-object v1

    const/4 v0, 0x0

    .line 678
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setPosition([Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;I)V

    const/4 v2, 0x2

    .line 679
    aget-object v3, v1, v2

    iget v3, v3, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v8, 0x1

    invoke-static {v3, v8, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 680
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 681
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->isFlippedVertically()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 682
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->save(I)V

    .line 683
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 684
    invoke-virtual {p0, v2, p2, v2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->scale(FFF)V

    .line 685
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->translate(FF)V

    .line 687
    :cond_34
    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    .line 688
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/4 v2, 0x5

    const/4 v3, 0x4

    move-object v0, p0

    .line 687
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->draw([Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;IIFFFF)V

    .line 689
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->isFlippedVertically()Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 690
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->restore()V

    .line 692
    :cond_4f
    iget p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountTextureRect:I

    add-int/2addr p0, v8

    iput p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountTextureRect:I

    return-void
.end method

.method private enableBlending(Z)V
    .registers 2

    const/16 p0, 0xbe2

    if-eqz p1, :cond_b

    .line 542
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 543
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void

    .line 545
    :cond_b
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 546
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method private getColor(I)[F
    .registers 6

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 529
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getAlpha()F

    move-result v2

    mul-float/2addr v0, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempColor:[F

    const/4 v1, 0x0

    aput v2, p0, v1

    const/4 v1, 0x1

    .line 534
    aput v3, p0, v1

    const/4 v1, 0x2

    .line 535
    aput p1, p0, v1

    const/4 p1, 0x3

    .line 536
    aput v0, p0, p1

    return-object p0
.end method

.method private getTargetTexture()Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;
    .registers 2

    .line 863
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;

    return-object p0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .registers 2

    .line 340
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 343
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 345
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 346
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return p0
.end method

.method private prepareDraw(IIF)V
    .registers 10

    .line 509
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDrawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 510
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_13

    .line 512
    invoke-static {p3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 513
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 515
    :cond_13
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getColor(I)[F

    move-result-object p2

    const/4 p3, 0x3

    .line 516
    aget v0, p2, p3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    .line 517
    :goto_25
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->enableBlending(Z)V

    const/4 v3, 0x2

    if-eqz v0, :cond_39

    .line 519
    aget v0, p2, v1

    aget v4, p2, v2

    aget v5, p2, v3

    aget p3, p2, p3

    invoke-static {v0, v4, v5, p3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 520
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 523
    :cond_39
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDrawParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    aget-object p3, p3, v3

    iget p3, p3, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {p3, v2, p2, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 524
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDrawParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setPosition([Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;I)V

    .line 525
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method private prepareTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;I[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;)V
    .registers 6

    .line 710
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 711
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 712
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/Texture;->isOpaque()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getAlpha()F

    move-result p2

    const v1, 0x3f733333    # 0.95f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_19

    goto :goto_1b

    :cond_19
    move p2, v0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p2, 0x1

    :goto_1c
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->enableBlending(Z)V

    const p2, 0x84c0

    .line 713
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 714
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 715
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->onBind(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)Z

    .line 716
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTarget()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getId()I

    move-result p1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 717
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const/4 p1, 0x3

    .line 718
    aget-object p1, p3, p1

    iget p1, p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 719
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const/4 p1, 0x4

    .line 720
    aget-object p1, p3, p1

    iget p1, p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getAlpha()F

    move-result p0

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 721
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method private prepareTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;
    .registers 4

    .line 698
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTarget()I

    move-result v0

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_d

    .line 699
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTextureParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    .line 700
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTextureProgram:I

    goto :goto_11

    .line 702
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mOesTextureParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    .line 703
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mOesTextureProgram:I

    .line 705
    :goto_11
    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->prepareTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;I[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;)V

    return-object v0
.end method

.method private static printMatrix(Ljava/lang/String;[FI)V
    .registers 5

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_6
    const/16 v1, 0x10

    if-ge p0, v1, :cond_22

    const/16 v1, 0x20

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 991
    rem-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_18

    const/16 v1, 0xa

    .line 992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_18
    add-int v1, p2, p0

    .line 994
    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    .line 996
    :cond_22
    const-string p0, "GLES20Canvas"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMatrix([Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;FFFF)V
    .registers 13

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 577
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {p2, v0, p4, p5, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 578
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mProjectionMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x10

    move-object v5, v1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p2, 0x1

    .line 579
    aget-object p1, p1, p2

    iget p1, p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    const/16 p3, 0x10

    invoke-static {p1, p2, v0, p0, p3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 580
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setPosition([Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;I)V
    .registers 11

    .line 551
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mBoxCoordinates:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 552
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mBoxBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mBoxBuffer:Ljava/nio/FloatBuffer;

    const v2, 0x88e4

    invoke-static {v1, v0, p0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 555
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const/4 p0, 0x0

    .line 556
    aget-object p1, p1, p0

    iget v2, p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    mul-int/lit8 v7, p2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 558
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 559
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 560
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setRenderTarget(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;)V
    .registers 6

    const/4 v0, 0x1

    const v1, 0x8d40

    const/4 v2, 0x0

    if-nez p1, :cond_1c

    if-eqz p2, :cond_1c

    .line 868
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v0, p1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 869
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 870
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mFrameBuffer:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 871
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    goto :goto_2e

    :cond_1c
    if-eqz p1, :cond_2e

    if-nez p2, :cond_2e

    .line 873
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 874
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 875
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v0, p1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 876
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    :cond_2e
    :goto_2e
    if-nez p2, :cond_38

    .line 880
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mScreenWidth:I

    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mScreenHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setSize(II)V

    return-void

    .line 882
    :cond_38
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setSize(II)V

    .line 884
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->isLoaded()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 885
    invoke-virtual {p2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;->prepare(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    .line 889
    :cond_4c
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;->getTarget()I

    move-result p0

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getId()I

    move-result p1

    const p2, 0x8ce0

    .line 888
    invoke-static {v1, p2, p0, p1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 890
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 892
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkFramebufferStatus()V

    return-void
.end method

.method private setTextureMatrix(Landroid/graphics/RectF;)V
    .registers 5

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    aput v2, v0, v1

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    aput v2, v0, v1

    .line 645
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTextureMatrix:[F

    const/16 v0, 0xc

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, p0, v0

    const/16 v0, 0xd

    .line 646
    iget p1, p1, Landroid/graphics/RectF;->top:F

    aput p1, p0, v0

    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .registers 5

    .line 967
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mGLId:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempIntArray:[I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;->glGenBuffers(I[II)V

    .line 968
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 969
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempIntArray:[I

    aget p0, p0, v1

    .line 974
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return p0
.end method


# virtual methods
.method public beginRenderTarget(Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;)V
    .registers 4

    .line 856
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->save()V

    .line 857
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getTargetTexture()Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;

    move-result-object v0

    .line 858
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setRenderTarget(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;)V

    return-void
.end method

.method public clearBuffer()V
    .registers 2

    const/4 p0, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 369
    invoke-static {p0, p0, p0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 370
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const/16 p0, 0x4000

    .line 371
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 372
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method public clearBuffer([F)V
    .registers 5

    const/4 p0, 0x1

    .line 377
    aget p0, p1, p0

    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    const/4 v2, 0x0

    aget p1, p1, v2

    invoke-static {p0, v0, v1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 378
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const/16 p0, 0x4000

    .line 379
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 380
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method public deleteBuffer(I)V
    .registers 3

    .line 808
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mUnboundTextures:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    monitor-enter v0

    .line 809
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDeleteBuffers:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->add(I)V

    .line 810
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public deleteRecycledResources()V
    .registers 8

    .line 815
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mBoxCoordinates:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->deleteBuffer(I)V

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mUnboundTextures:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    monitor-enter v0

    .line 817
    :try_start_8
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mUnboundTextures:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    .line 818
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v2, :cond_25

    .line 819
    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mGLId:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->size()I

    move-result v5

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->getInternalArray()[I

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 820
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->clear()V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_53

    .line 823
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDeleteBuffers:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    .line 824
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_3d

    .line 825
    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mGLId:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->size()I

    move-result v5

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->getInternalArray()[I

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 826
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->clear()V

    .line 828
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_23

    .line 829
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mDrawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 830
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTextureProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 831
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mOesTextureProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 832
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMeshProgram:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void

    .line 828
    :goto_53
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_23

    throw p0
.end method

.method public drawLine(FFFFLcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;)V
    .registers 15

    sub-float v6, p3, p1

    sub-float v7, p4, p2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v8, p5

    .line 486
    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->draw(IIIFFFFLcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;)V

    .line 488
    iget p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawMesh(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IIIIII)V
    .registers 18

    .line 728
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMeshProgram:I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMeshParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->prepareTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;I[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;)V

    const p1, 0x8893

    move/from16 v0, p6

    .line 730
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 731
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const v0, 0x8892

    .line 733
    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 734
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 735
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMeshParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    const/4 v1, 0x0

    aget-object p4, p4, v1

    iget v2, p4, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    .line 736
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 738
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 740
    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 741
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 742
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMeshParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    aget-object p4, p4, v3

    iget v3, p4, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->handle:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    .line 743
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 745
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 746
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 747
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 749
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 750
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 751
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 752
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 754
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMeshParameters:[Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;

    int-to-float v6, p2

    int-to-float v7, p3

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setMatrix([Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;FFFF)V

    const/4 p2, 0x5

    const/16 p3, 0x1401

    move/from16 p4, p7

    .line 755
    invoke-static {p2, p4, p3, v1}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 756
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 758
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 759
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 760
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 761
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 762
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 763
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 764
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawMesh:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawMesh:I

    return-void
.end method

.method public drawMixed(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IFIIII)V
    .registers 15

    .line 769
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->copyTextureCoordinates(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/RectF;)V

    .line 770
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v5, p4

    int-to-float v6, p5

    add-int v1, p4, p6

    int-to-float v1, v1

    add-int v2, p5, p7

    int-to-float v2, v2

    invoke-virtual {v3, v5, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 771
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->drawMixed(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public drawMixed(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 12

    .line 776
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_44

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    goto :goto_44

    :cond_12
    const/4 v0, 0x1

    .line 779
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->save(I)V

    .line 781
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getAlpha()F

    move-result v0

    .line 782
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    sub-float/2addr v1, p3

    mul-float/2addr v1, v0

    .line 785
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setAlpha(F)V

    .line 786
    invoke-virtual {p0, p1, p4, p5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->drawTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    mul-float/2addr p3, v0

    .line 789
    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setAlpha(F)V

    .line 790
    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->fillRect(FFFFI)V

    .line 792
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->restore()V

    :cond_44
    :goto_44
    return-void
.end method

.method public drawRect(FFFFLcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;)V
    .registers 15

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v1, 0x2

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .line 493
    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->draw(IIIFFFFLcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;)V

    .line 494
    iget p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IIII)V
    .registers 9

    if-lez p4, :cond_23

    if-gtz p5, :cond_5

    goto :goto_23

    .line 595
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->copyTextureCoordinates(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/RectF;)V

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 597
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {p2, p3, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)V

    .line 598
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->drawTextureRect(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public drawTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 6

    .line 617
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2a

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    goto :goto_2a

    .line 620
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 621
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 623
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {p2, p3, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)V

    .line 624
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->drawTextureRect(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public drawTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;[FIIII)V
    .registers 10

    if-lez p5, :cond_15

    if-gtz p6, :cond_5

    goto :goto_15

    .line 633
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    add-int/2addr p4, p6

    int-to-float p4, p4

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 634
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->drawTextureRect(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;[FLandroid/graphics/RectF;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public dumpStatisticsAndClear()V
    .registers 5

    .line 837
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawMesh:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountTextureRect:I

    .line 838
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountFillRect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawLine:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 837
    const-string v1, "MESH:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 839
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawMesh:I

    .line 840
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountTextureRect:I

    .line 841
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountFillRect:I

    .line 842
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountDrawLine:I

    .line 843
    const-string p0, "GLES20Canvas"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endRenderTarget()V
    .registers 3

    .line 848
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;

    .line 849
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getTargetTexture()Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;

    move-result-object v1

    .line 850
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setRenderTarget(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;)V

    .line 851
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->restore()V

    return-void
.end method

.method public fillRect(FFFFI)V
    .registers 16

    const/4 v3, 0x4

    const/4 v9, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 585
    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->draw(IIIFFFFIF)V

    .line 587
    iget p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountFillRect:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCountFillRect:I

    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mAlphas:[F

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentAlphaIndex:I

    aget p0, v0, p0

    return p0
.end method

.method public getBounds(Landroid/graphics/Rect;IIII)V
    .registers 14

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    int-to-float v4, p2

    int-to-float v5, p3

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 1010
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    int-to-float p3, p4

    int-to-float p4, p5

    const/high16 p5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {p2, v0, p3, p4, p5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1011
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    sget-object v5, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->BOUNDS_COORDINATES:[F

    const/4 v6, 0x0

    const/16 v2, 0x10

    const/4 v4, 0x0

    move-object v3, v1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 1012
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    move-object v6, v5

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/16 v3, 0x14

    move-object v4, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 1013
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    const/16 p3, 0x10

    aget p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1014
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    const/16 p3, 0x14

    aget p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1015
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    const/16 p3, 0x11

    aget p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1016
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    const/16 p2, 0x15

    aget p0, p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1017
    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    return-void
.end method

.method public getGLId()Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;
    .registers 1

    .line 1022
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mGLId:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;

    return-object p0
.end method

.method public initializeTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 941
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTarget()I

    move-result p0

    .line 942
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 943
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const/4 p1, 0x0

    .line 944
    invoke-static {p0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public initializeTextureSize(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;II)V
    .registers 13

    .line 931
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTarget()I

    move-result v0

    .line 932
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getId()I

    move-result p0

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 933
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 934
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTextureWidth()I

    move-result v3

    .line 935
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTextureHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move v6, p2

    move v2, p2

    move v7, p3

    .line 936
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public multiplyAlpha(F)V
    .registers 3

    .line 395
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->setAlpha(F)V

    return-void
.end method

.method public multiplyMatrix([FI)V
    .registers 9

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    .line 437
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    .line 438
    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v1, 0x0

    move-object v4, p1

    move v5, p2

    .line 439
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p0, 0x0

    const/16 p1, 0x10

    .line 440
    invoke-static {v0, p0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public recoverFromLightCycle()V
    .registers 3

    .line 1001
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mHeight:I

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 p0, 0xb71

    .line 1002
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 p0, 0x1

    const/16 v0, 0x303

    .line 1003
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1004
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method public restore()V
    .registers 4

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mSaveFlags:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->removeLast()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 476
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentAlphaIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentAlphaIndex:I

    :cond_10
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1a

    .line 480
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    :cond_1a
    return-void
.end method

.method public rotate(FFFF)V
    .registers 12

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    return-void

    .line 426
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mTempMatrix:[F

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 427
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 428
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    .line 429
    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v2, 0x10

    const/4 v6, 0x0

    move-object v5, v1

    .line 430
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 p0, 0x10

    .line 431
    invoke-static {v1, p0, v3, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public save()V
    .registers 2

    const/4 v0, -0x1

    .line 445
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->save(I)V

    return-void
.end method

.method public save(I)V
    .registers 7

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    .line 452
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getAlpha()F

    move-result v0

    .line 453
    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 454
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mAlphas:[F

    array-length v4, v2

    if-gt v4, v3, :cond_1c

    .line 455
    array-length v3, v2

    mul-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mAlphas:[F

    .line 457
    :cond_1c
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mAlphas:[F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentAlphaIndex:I

    aput v0, v2, v3

    :cond_22
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v1, :cond_42

    .line 461
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v2, v0, 0x10

    .line 462
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 463
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    array-length v4, v3

    if-gt v4, v2, :cond_39

    .line 464
    array-length v2, v3

    mul-int/2addr v2, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    .line 466
    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v3, 0x10

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mSaveFlags:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->add(I)V

    return-void
.end method

.method public scale(FFF)V
    .registers 5

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, p0, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mAlphas:[F

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentAlphaIndex:I

    aput p1, v0, p0

    return-void
.end method

.method public setSize(II)V
    .registers 13

    .line 353
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mWidth:I

    .line 354
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mHeight:I

    const/4 v0, 0x0

    .line 355
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 356
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 358
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mProjectionMatrix:[F

    int-to-float v5, p1

    int-to-float v7, p2

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 359
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->getTargetTexture()Lcom/transsion/camera/feature/mode/dualvideo/glrender/RawTexture;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 360
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mScreenWidth:I

    .line 361
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mScreenHeight:I

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v7, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v0, p2, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_3d
    return-void
.end method

.method public setTextureParameters(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)V
    .registers 3

    .line 920
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTarget()I

    move-result p0

    .line 921
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 922
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const/16 p1, 0x2802

    const v0, 0x812f

    .line 923
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 924
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2801

    const v0, 0x46180400    # 9729.0f

    .line 925
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    .line 926
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .registers 7

    .line 950
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTarget()I

    move-result p0

    .line 951
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 952
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->checkError()V

    const/4 p1, 0x0

    .line 953
    invoke-static/range {p0 .. p6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public translate(FF)V
    .registers 8

    .line 408
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    add-int/lit8 v1, v0, 0xc

    .line 410
    aget v2, p0, v1

    aget v3, p0, v0

    mul-float/2addr v3, p1

    add-int/lit8 v4, v0, 0x4

    aget v4, p0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v1, v0, 0xd

    .line 411
    aget v2, p0, v1

    add-int/lit8 v3, v0, 0x1

    aget v3, p0, v3

    mul-float/2addr v3, p1

    add-int/lit8 v4, v0, 0x5

    aget v4, p0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v1, v0, 0xe

    .line 412
    aget v2, p0, v1

    add-int/lit8 v3, v0, 0x2

    aget v3, p0, v3

    mul-float/2addr v3, p1

    add-int/lit8 v4, v0, 0x6

    aget v4, p0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v1, v0, 0xf

    .line 413
    aget v2, p0, v1

    add-int/lit8 v3, v0, 0x3

    aget v3, p0, v3

    mul-float/2addr v3, p1

    add-int/lit8 v0, v0, 0x7

    aget p1, p0, v0

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, p0, v1

    return-void
.end method

.method public translate(FFF)V
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mMatrices:[F

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, p0, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public unloadTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)Z
    .registers 4

    .line 797
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 799
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mUnboundTextures:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    monitor-enter v1

    .line 800
    :try_start_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->mUnboundTextures:Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->add(I)V

    .line 801
    monitor-exit v1

    return v0

    :catchall_14
    move-exception p0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    return v0
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .registers 3

    const/4 v0, 0x1

    .line 963
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result p0

    return p0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .registers 3

    const/4 v0, 0x4

    .line 958
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result p0

    return p0
.end method
