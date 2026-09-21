.class public Lcom/transsion/camera/ui/setting/facedetection/GenderView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static MAN:Ljava/lang/String; = "man"

.field public static WOMAN:Ljava/lang/String; = "woman"

.field private static sDensity:F


# instance fields
.field private FEMALE:Ljava/lang/String;

.field private MALE:Ljava/lang/String;

.field private mBgMarginBottom:I

.field private mBgMarginLeft:I

.field private mBgMarginTop:I

.field private mBgPaddingBottom:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mFaceAttr:Ljava/util/Map;

.field private mFaceAttrArray:[[Ljava/lang/String;

.field private mFilletRadius:I

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mMarginIconToText:I

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MALE:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->FEMALE:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->initGenderParameter(Landroid/content/Context;)V

    .line 48
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    .line 49
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/Map;

    return-void
.end method

.method private InitIcon(Landroid/content/Context;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_16

    .line 82
    sget v0, Lcom/transsion/camera/R$drawable;->ic_ui_male:I

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->getScaleBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_ui_female:I

    .line 84
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->getScaleBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    filled-new-array {v0, p1}, [Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    :cond_16
    return-void
.end method

.method private dpToPixel(F)I
    .registers 2

    .line 103
    sget p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->sDensity:F

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private getScaleBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 10

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 p1, 0x41900000    # 18.0f

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->dpToPixel(F)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, v3

    div-float p1, p0, p1

    int-to-float p2, v4

    div-float/2addr p0, p2

    .line 97
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 98
    invoke-virtual {v5, p1, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 5

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method private initGenderParameter(Landroid/content/Context;)V
    .registers 3

    .line 53
    sget v0, Lcom/transsion/camera/R$string;->gender_male:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MALE:Ljava/lang/String;

    .line 54
    sget v0, Lcom/transsion/camera/R$string;->gender_female:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->FEMALE:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->initPaint(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->InitIcon(Landroid/content/Context;)V

    return-void
.end method

.method private initPaint(Landroid/content/Context;)V
    .registers 6

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 61
    sput p1, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->sDensity:F

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x1

    if-nez v0, :cond_45

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    .line 64
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, p1

    .line 65
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginLeft:I

    mul-float v0, p1, v1

    .line 66
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginTop:I

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginBottom:I

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p1

    .line 68
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaddingBottom:I

    .line 69
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFilletRadius:I

    .line 72
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_68

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 74
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    mul-float/2addr p1, v1

    .line 76
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mMarginIconToText:I

    :cond_68
    return-void
.end method


# virtual methods
.method public clearGender()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    return-void
.end method

.method public drawGender(Landroid/graphics/Canvas;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 107
    array-length v3, v2

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput v7, v5, v6

    const/4 v7, 0x0

    aput v3, v5, v7

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    move v3, v7

    .line 108
    :goto_1c
    array-length v5, v2

    if-ge v3, v5, :cond_1bb

    .line 109
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->parseGender(I)Ljava/lang/String;

    move-result-object v5

    .line 110
    aget-object v8, v2, v3

    invoke-virtual {v8}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->parseAge(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3f

    move/from16 v16, v6

    move/from16 v17, v7

    goto/16 :goto_1b2

    .line 115
    :cond_3f
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v9, v9, v3

    aget-object v10, v2, v3

    invoke-virtual {v10}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    .line 116
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v9, v9, v3

    aget-object v10, v2, v3

    invoke-virtual {v10}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 117
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v9, v9, v3

    aget-object v10, v2, v3

    invoke-virtual {v10}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 118
    aget-object v9, v2, v3

    invoke-virtual {v9}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 120
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_b2

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b2

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/Map;

    .line 121
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_b2

    .line 122
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v8, v8, v3

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v4

    aput-object v9, v8, v4

    goto :goto_bf

    .line 124
    :cond_b2
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v11, v10, v3

    aput-object v8, v11, v4

    .line 125
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/Map;

    aget-object v10, v10, v3

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_bf
    sget-object v8, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MAN:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 130
    const-string v8, " "

    if-eqz v5, :cond_e4

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MALE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v4

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_fe

    .line 133
    :cond_e4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->FEMALE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v4

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 137
    :goto_fe
    invoke-direct {v0, v8}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v9

    .line 138
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 139
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 142
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 143
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 146
    iget v13, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginLeft:I

    mul-int/2addr v13, v4

    add-int/2addr v13, v11

    iget v14, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mMarginIconToText:I

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    .line 147
    iget v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginTop:I

    add-int/2addr v10, v12

    iget v14, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginBottom:I

    add-int/2addr v10, v14

    .line 150
    aget-object v14, v2, v3

    invoke-virtual {v14}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 151
    aget-object v15, v2, v3

    invoke-virtual {v15}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    iget v4, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaddingBottom:I

    sub-int/2addr v15, v4

    sub-int/2addr v15, v10

    int-to-float v4, v15

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-eqz v5, :cond_15b

    .line 153
    iget-object v15, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    move/from16 v16, v6

    const v6, -0x66cd3a01

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_165

    :cond_15b
    move/from16 v16, v6

    .line 155
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    const v15, -0x6600cd94

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    :goto_165
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v15, v14

    move/from16 v17, v7

    int-to-float v7, v4

    add-int/2addr v13, v14

    int-to-float v13, v13

    add-int/2addr v10, v4

    int-to-float v10, v10

    invoke-direct {v6, v15, v7, v13, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 160
    iget v7, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFilletRadius:I

    int-to-float v10, v7

    int-to-float v7, v7

    iget-object v13, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v10, v7, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 163
    iget v6, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginLeft:I

    add-int v7, v14, v6

    add-int/2addr v7, v11

    iget v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mMarginIconToText:I

    add-int/2addr v7, v10

    add-int v10, v4, v9

    int-to-float v10, v10

    sub-int/2addr v9, v12

    int-to-float v9, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    sub-float/2addr v10, v9

    .line 164
    iget v9, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginTop:I

    int-to-float v11, v9

    add-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x0

    if-eqz v5, :cond_1a0

    .line 166
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v17

    add-int/2addr v14, v6

    int-to-float v6, v14

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-virtual {v1, v5, v6, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1ab

    .line 168
    :cond_1a0
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v16

    add-int/2addr v14, v6

    int-to-float v6, v14

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-virtual {v1, v5, v6, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1ab
    int-to-float v4, v7

    int-to-float v5, v10

    .line 170
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1b2
    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v16

    move/from16 v7, v17

    const/4 v4, 0x2

    goto/16 :goto_1c

    :cond_1bb
    return-void
.end method

.method public parseAge(I)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x4

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    if-eq p1, p0, :cond_48

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3b

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2e

    if-eq p1, v0, :cond_21

    const/4 p0, 0x5

    if-eq p1, p0, :cond_14

    .line 219
    const-string p0, ""

    return-object p0

    .line 216
    :cond_14
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x22

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 212
    :cond_21
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 208
    :cond_2e
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x14

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 204
    :cond_3b
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0xc

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :cond_48
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parseGender(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_6

    .line 187
    sget-object p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MAN:Ljava/lang/String;

    return-object p0

    :cond_6
    const/4 p0, 0x2

    if-ne p1, p0, :cond_c

    .line 189
    sget-object p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->WOMAN:Ljava/lang/String;

    return-object p0

    .line 191
    :cond_c
    const-string p0, ""

    return-object p0
.end method
