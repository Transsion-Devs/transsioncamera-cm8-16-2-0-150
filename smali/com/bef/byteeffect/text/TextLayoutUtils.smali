.class public Lcom/bef/byteeffect/text/TextLayoutUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;
    }
.end annotation


# static fields
.field private static final FONT_SIZE_INCREMENT:I = 0x2

.field private static final FONT_SIZE_INIT:I = 0xa

.field private static final MAX_BITMAP_HEIGHT:I = 0x800

.field private static final MAX_BITMAP_WIDTH:I = 0x800


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBitmapAtlasAlphaUTF32([ILcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 5
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_15

    .line 725
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_15

    .line 729
    :cond_7
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([III)V

    .line 731
    sget-object p0, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_ALPHA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-static {v0, p1, p0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateBitmapAtlasUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateBitmapAtlasAlphaUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 3
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_10

    .line 740
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_10

    .line 744
    :cond_9
    sget-object v0, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_ALPHA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-static {p0, p1, v0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateBitmapAtlasUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateBitmapAtlasRGBAUTF32([ILcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 5
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_15

    .line 697
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_15

    .line 701
    :cond_7
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([III)V

    .line 703
    sget-object p0, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_RGBA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-static {v0, p1, p0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateBitmapAtlasUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateBitmapAtlasRGBAUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 3
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_10

    .line 712
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_10

    .line 716
    :cond_9
    sget-object v0, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_RGBA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-static {p0, p1, v0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateBitmapAtlasUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static generateBitmapAtlasUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 752
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return-object v3

    .line 754
    :cond_c
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 755
    iget-object v4, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_33

    .line 756
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontPath:Ljava/lang/String;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 757
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontPath:Ljava/lang/String;

    iget-object v4, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/bef/byteeffect/text/FontCache;->getFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_33

    .line 759
    :cond_2b
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    iget v4, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontStyle:I

    invoke-static {v2, v4}, Lcom/bef/byteeffect/text/FontCache;->getFromSystem(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 763
    :cond_33
    :goto_33
    iget v4, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->textColor:I

    .line 764
    iget v5, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->backColor:I

    .line 765
    iget v6, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowColor:I

    .line 767
    sget-object v7, Lcom/bef/byteeffect/text/TextLayoutUtils$1;->$SwitchMap$com$bef$byteeffect$text$TextLayoutUtils$COLOR_TYPE:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_60

    and-int/lit16 v7, v4, 0xff

    shl-int/lit8 v7, v7, 0x18

    shr-int/lit8 v4, v4, 0x8

    const v9, 0xffffff

    and-int/2addr v4, v9

    add-int/2addr v7, v4

    and-int/lit16 v4, v5, 0xff

    shl-int/lit8 v4, v4, 0x18

    shr-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v9

    add-int/2addr v4, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x18

    shr-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v9

    add-int/2addr v5, v6

    goto :goto_6c

    :cond_60
    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v7, v4, 0x18

    and-int/lit16 v4, v5, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x18

    .line 781
    :goto_6c
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 783
    iget v9, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->paintStyle:I

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v9, :cond_78

    if-eq v9, v8, :cond_7f

    if-eq v9, v10, :cond_7a

    :cond_78
    move v9, v11

    goto :goto_83

    .line 792
    :cond_7a
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 793
    iget v9, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->strokeWidth:F

    goto :goto_83

    .line 788
    :cond_7f
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 789
    iget v9, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->strokeWidth:F

    .line 797
    :goto_83
    new-instance v12, Landroid/text/TextPaint;

    invoke-direct {v12, v8}, Landroid/text/TextPaint;-><init>(I)V

    if-eqz v2, :cond_8d

    .line 798
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 799
    :cond_8d
    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 800
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 801
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 802
    iget v2, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontSize:F

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 803
    iget v2, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    iget v6, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDx:F

    iget v7, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDy:F

    invoke-virtual {v12, v2, v6, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 806
    iget v2, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineWidth:I

    const/16 v5, 0x800

    if-gt v2, v5, :cond_ac

    if-nez v2, :cond_ad

    :cond_ac
    move v2, v5

    .line 811
    :cond_ad
    new-instance v5, Lcom/bef/byteeffect/text/data/TextBitmapResult;

    invoke-direct {v5}, Lcom/bef/byteeffect/text/data/TextBitmapResult;-><init>()V

    const/4 v6, 0x4

    .line 812
    iput v6, v5, Lcom/bef/byteeffect/text/data/TextBitmapResult;->channel:I

    const/4 v7, 0x0

    .line 813
    iput v7, v5, Lcom/bef/byteeffect/text/data/TextBitmapResult;->lineCount:I

    .line 814
    iput v8, v5, Lcom/bef/byteeffect/text/data/TextBitmapResult;->type:I

    .line 815
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 816
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 817
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 823
    iget v15, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDx:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v10

    iget v10, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    const/high16 v17, 0x40000000    # 2.0f

    div-float v10, v10, v17

    add-float/2addr v15, v10

    .line 824
    iget v10, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDy:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v18, v3

    iget v3, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    div-float v19, v3, v17

    add-float v10, v10, v19

    .line 825
    iget v6, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->letterSpacing:F

    cmpl-float v20, v6, v11

    if-lez v20, :cond_ed

    goto :goto_ee

    :cond_ed
    move v6, v11

    :goto_ee
    float-to-int v6, v6

    move/from16 v20, v8

    .line 826
    iget v8, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineSpacingAdd:F

    cmpl-float v21, v8, v11

    if-lez v21, :cond_f8

    goto :goto_f9

    :cond_f8
    move v8, v11

    :goto_f9
    float-to-int v8, v8

    .line 827
    iget v7, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDx:F

    neg-float v7, v7

    div-float v3, v3, v17

    add-float/2addr v7, v3

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    .line 828
    iget v7, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDy:F

    neg-float v7, v7

    iget v11, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    div-float v11, v11, v17

    add-float/2addr v7, v11

    const/4 v11, 0x0

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v11, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontSize:F

    add-float/2addr v7, v11

    float-to-int v7, v7

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    move/from16 v22, v10

    move/from16 v23, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 830
    :goto_122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v11, v15, :cond_33d

    .line 831
    new-instance v15, Lcom/bef/byteeffect/text/data/CharLayout;

    invoke-direct {v15}, Lcom/bef/byteeffect/text/data/CharLayout;-><init>()V

    move/from16 v24, v4

    const/4 v4, 0x0

    .line 832
    iput v4, v15, Lcom/bef/byteeffect/text/data/CharLayout;->charCode:I

    .line 833
    iput-boolean v4, v15, Lcom/bef/byteeffect/text/data/CharLayout;->isEmoji:Z

    add-int/lit8 v4, v10, 0x1

    .line 834
    iput v10, v15, Lcom/bef/byteeffect/text/data/CharLayout;->charId:I

    move/from16 v25, v4

    move/from16 v10, v20

    .line 836
    :goto_13c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v26, v10

    add-int v10, v26, v11

    move-object/from16 v27, v5

    add-int/lit8 v5, v10, 0x1

    if-le v4, v5, :cond_1bc

    add-int/lit8 v4, v10, -0x1

    .line 837
    invoke-virtual {v0, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 838
    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 839
    const-string v10, "\ud800"

    invoke-virtual {v4, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v29, v9

    const-string v9, "\udbff"

    if-ltz v28, :cond_18c

    invoke-virtual {v4, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_18c

    const-string v4, "\udc00"

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_18c

    const-string v4, "\udfff"

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_18c

    move/from16 v4, v20

    .line 840
    iput-boolean v4, v15, Lcom/bef/byteeffect/text/data/CharLayout;->isEmoji:Z

    add-int/lit8 v4, v26, 0x1

    int-to-short v4, v4

    .line 842
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v26, v4

    add-int/lit8 v4, v11, 0x3

    if-ge v5, v4, :cond_18c

    :goto_187
    move-object/from16 v28, v14

    :cond_189
    move/from16 v10, v26

    goto :goto_1bf

    :cond_18c
    add-int v4, v11, v26

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v28, v14

    .line 846
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v4, v4, 0x2

    .line 847
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 848
    const-string v5, "\u200d"

    invoke-virtual {v14, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_189

    invoke-virtual {v4, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_189

    invoke-virtual {v4, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_189

    add-int/lit8 v4, v26, 0x2

    int-to-short v10, v4

    move-object/from16 v5, v27

    move-object/from16 v14, v28

    move-object/from16 v9, v29

    const/16 v20, 0x1

    goto :goto_13c

    :cond_1bc
    move-object/from16 v29, v9

    goto :goto_187

    .line 854
    :goto_1bf
    iget-boolean v4, v15, Lcom/bef/byteeffect/text/data/CharLayout;->isEmoji:Z

    if-nez v4, :cond_1ed

    add-int v4, v11, v10

    .line 855
    invoke-virtual {v0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    .line 856
    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->charCode:I

    const/4 v5, 0x0

    .line 857
    :goto_1d1
    array-length v9, v4

    if-ge v5, v9, :cond_1ed

    .line 858
    iget v9, v15, Lcom/bef/byteeffect/text/data/CharLayout;->charCode:I

    aget-byte v14, v4, v5

    and-int/lit16 v14, v14, 0xff

    move/from16 v26, v5

    array-length v5, v4

    sub-int v5, v5, v26

    const/16 v20, 0x1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    shl-int v5, v14, v5

    add-int/2addr v9, v5

    iput v9, v15, Lcom/bef/byteeffect/text/data/CharLayout;->charCode:I

    add-int/lit8 v5, v26, 0x1

    goto :goto_1d1

    .line 863
    :cond_1ed
    iget v4, v15, Lcom/bef/byteeffect/text/data/CharLayout;->charCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bef/byteeffect/text/data/CharLayout;

    if-eqz v4, :cond_236

    .line 864
    iget-boolean v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->isEmoji:Z

    if-eqz v5, :cond_200

    goto :goto_236

    .line 898
    :cond_200
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->pos_left:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->pos_left:F

    .line 899
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->pos_top:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->pos_top:F

    .line 900
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->pos_right:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->pos_right:F

    .line 901
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->pos_bottom:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->pos_bottom:F

    .line 902
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->left:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->left:F

    .line 903
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->top:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->top:F

    .line 904
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->right:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->right:F

    .line 905
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->bottom:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->bottom:F

    .line 906
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->baseline:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->baseline:F

    .line 907
    iget v5, v4, Lcom/bef/byteeffect/text/data/CharLayout;->origin:F

    iput v5, v15, Lcom/bef/byteeffect/text/data/CharLayout;->origin:F

    .line 908
    iget v4, v4, Lcom/bef/byteeffect/text/data/CharLayout;->advance:F

    iput v4, v15, Lcom/bef/byteeffect/text/data/CharLayout;->advance:F

    move/from16 v31, v6

    move/from16 v26, v10

    move-object/from16 v5, v28

    :goto_232
    move-object/from16 v4, v29

    goto/16 :goto_32a

    .line 865
    :cond_236
    :goto_236
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    add-int v5, v11, v10

    .line 866
    invoke-virtual {v12, v0, v11, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 867
    iget v9, v4, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v14, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDx:F

    move/from16 v26, v9

    iget v9, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    div-float v9, v9, v17

    sub-float/2addr v14, v9

    const/4 v9, 0x0

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v14

    add-float v14, v26, v14

    float-to-int v14, v14

    iput v14, v4, Landroid/graphics/Rect;->left:I

    .line 868
    iget v14, v4, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    iget v9, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDx:F

    move/from16 v26, v9

    iget v9, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    div-float v9, v9, v17

    add-float v9, v26, v9

    move/from16 v26, v10

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-float/2addr v14, v9

    float-to-int v9, v14

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 869
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget v14, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDy:F

    iget v10, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    div-float v10, v10, v17

    add-float/2addr v14, v10

    const/4 v10, 0x0

    invoke-static {v14, v10}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v9, v14

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 870
    iget v9, v4, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget v14, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDy:F

    iget v10, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    div-float v10, v10, v17

    sub-float/2addr v14, v10

    const/4 v10, 0x0

    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    move-result v14

    add-float/2addr v9, v14

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 872
    invoke-virtual {v12, v0, v11, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    .line 873
    iput v9, v15, Lcom/bef/byteeffect/text/data/CharLayout;->advance:F

    int-to-float v10, v3

    add-float/2addr v10, v9

    add-float v10, v10, v23

    int-to-float v14, v6

    add-float/2addr v10, v14

    const/high16 v30, 0x3f800000    # 1.0f

    add-float v10, v10, v30

    move/from16 v31, v3

    int-to-float v3, v2

    cmpl-float v3, v10, v3

    if-ltz v3, :cond_2d7

    .line 876
    iget v3, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDx:F

    neg-float v3, v3

    iget v10, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    div-float v10, v10, v17

    add-float/2addr v3, v10

    const/4 v10, 0x0

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v6

    const/16 v20, 0x1

    add-int/lit8 v3, v3, 0x1

    int-to-float v7, v7

    .line 877
    iget v10, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontSize:F

    add-float v10, v10, v22

    move/from16 v31, v3

    int-to-float v3, v8

    add-float/2addr v10, v3

    add-float v10, v10, v30

    add-float/2addr v7, v10

    float-to-int v7, v7

    const/high16 v3, 0x400000

    .line 878
    div-int/2addr v3, v2

    if-lt v7, v3, :cond_2d7

    move-object/from16 v5, v28

    move-object/from16 v4, v29

    :goto_2d4
    const/4 v3, 0x0

    goto/16 :goto_344

    :cond_2d7
    move/from16 v3, v31

    .line 882
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v11, v5, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v5, v28

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-float v10, v7

    .line 884
    iput v10, v15, Lcom/bef/byteeffect/text/data/CharLayout;->baseline:F

    int-to-float v10, v3

    .line 885
    iput v10, v15, Lcom/bef/byteeffect/text/data/CharLayout;->origin:F

    move/from16 v28, v3

    .line 886
    iget v3, v4, Landroid/graphics/Rect;->left:I

    move/from16 v31, v6

    int-to-float v6, v3

    iput v6, v15, Lcom/bef/byteeffect/text/data/CharLayout;->pos_left:F

    .line 887
    iget v6, v4, Landroid/graphics/Rect;->top:I

    move/from16 v32, v3

    int-to-float v3, v6

    iput v3, v15, Lcom/bef/byteeffect/text/data/CharLayout;->pos_top:F

    .line 888
    iget v3, v4, Landroid/graphics/Rect;->right:I

    move/from16 v33, v6

    int-to-float v6, v3

    iput v6, v15, Lcom/bef/byteeffect/text/data/CharLayout;->pos_right:F

    .line 889
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v4

    iput v6, v15, Lcom/bef/byteeffect/text/data/CharLayout;->pos_bottom:F

    add-int v6, v32, v28

    int-to-float v6, v6

    .line 890
    iput v6, v15, Lcom/bef/byteeffect/text/data/CharLayout;->left:F

    add-int v6, v33, v7

    int-to-float v6, v6

    .line 891
    iput v6, v15, Lcom/bef/byteeffect/text/data/CharLayout;->top:F

    add-int v3, v3, v28

    int-to-float v3, v3

    .line 892
    iput v3, v15, Lcom/bef/byteeffect/text/data/CharLayout;->right:F

    add-int/2addr v4, v7

    int-to-float v3, v4

    .line 893
    iput v3, v15, Lcom/bef/byteeffect/text/data/CharLayout;->bottom:F

    .line 894
    iget v3, v15, Lcom/bef/byteeffect/text/data/CharLayout;->charCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-float v9, v9, v23

    add-float/2addr v9, v14

    add-float v9, v9, v30

    add-float/2addr v10, v9

    float-to-int v3, v10

    goto/16 :goto_232

    .line 910
    :goto_32a
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v11, v11, v26

    move-object v9, v4

    move-object v14, v5

    move/from16 v4, v24

    move/from16 v10, v25

    move-object/from16 v5, v27

    move/from16 v6, v31

    const/16 v20, 0x1

    goto/16 :goto_122

    :cond_33d
    move/from16 v24, v4

    move-object/from16 v27, v5

    move-object v4, v9

    move-object v5, v14

    goto :goto_2d4

    .line 912
    :goto_344
    new-array v6, v3, [Lcom/bef/byteeffect/text/data/CharLayout;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/bef/byteeffect/text/data/CharLayout;

    move-object/from16 v4, v27

    iput-object v3, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    .line 915
    iget v1, v1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontSize:F

    float-to-int v1, v1

    add-int/2addr v7, v1

    .line 917
    sget-object v1, Lcom/bef/byteeffect/text/TextLayoutUtils$1;->$SwitchMap$com$bef$byteeffect$text$TextLayoutUtils$COLOR_TYPE:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_369

    .line 924
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x4

    .line 925
    iput v3, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->channel:I

    goto :goto_371

    .line 919
    :cond_369
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 920
    iput v3, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->channel:I

    :goto_371
    if-nez v1, :cond_374

    return-object v18

    .line 931
    :cond_374
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move/from16 v6, v24

    .line 932
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 933
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 934
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 936
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v8, v9

    :goto_391
    if-ge v8, v3, :cond_3ad

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Landroid/graphics/Rect;

    .line 937
    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v13, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget v13, v10, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-virtual {v6, v11, v13, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_391

    .line 952
    :cond_3ad
    iput-object v1, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 953
    :goto_3af
    iget-object v0, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    array-length v1, v0

    if-ge v9, v1, :cond_3cf

    .line 954
    aget-object v0, v0, v9

    iget v1, v0, Lcom/bef/byteeffect/text/data/CharLayout;->bottom:F

    int-to-float v3, v7

    div-float/2addr v1, v3

    iput v1, v0, Lcom/bef/byteeffect/text/data/CharLayout;->bottom:F

    .line 955
    iget v1, v0, Lcom/bef/byteeffect/text/data/CharLayout;->top:F

    div-float/2addr v1, v3

    iput v1, v0, Lcom/bef/byteeffect/text/data/CharLayout;->top:F

    .line 956
    iget v1, v0, Lcom/bef/byteeffect/text/data/CharLayout;->left:F

    int-to-float v3, v2

    div-float/2addr v1, v3

    iput v1, v0, Lcom/bef/byteeffect/text/data/CharLayout;->left:F

    .line 957
    iget v1, v0, Lcom/bef/byteeffect/text/data/CharLayout;->right:F

    div-float/2addr v1, v3

    iput v1, v0, Lcom/bef/byteeffect/text/data/CharLayout;->right:F

    add-int/lit8 v9, v9, 0x1

    goto :goto_3af

    :cond_3cf
    move-object/from16 v0, v18

    .line 960
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method public static generateBitmapNeonAlphaUTF32([ILcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 5
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_13

    .line 45
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_13

    .line 49
    :cond_7
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([III)V

    .line 51
    invoke-static {v0, p1}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateBitmapNeonAlphaUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateBitmapNeonAlphaUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 4
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 59
    iget v0, p1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->bitmapType:I

    invoke-static {v0}, Lcom/bef/byteeffect/text/data/BitmapType;->valueOf(I)Lcom/bef/byteeffect/text/data/BitmapType;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/bef/byteeffect/text/TextLayoutUtils$1;->$SwitchMap$com$bef$byteeffect$text$data$BitmapType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_16
    invoke-static {p0, p1}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateTextAutoSizedNeonBitmap(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1b
    invoke-static {p0, p1}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateTextAutoSizedShakeBitmap(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0
.end method

.method public static generateBitmapNormalAlphaUTF32([ILcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 5
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_15

    .line 418
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_15

    .line 422
    :cond_7
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([III)V

    .line 424
    sget-object p0, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_ALPHA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-static {v0, p1, p0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateBitmapNormalUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateBitmapNormalAlphaUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 3
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_10

    .line 433
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_10

    .line 437
    :cond_9
    sget-object v0, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_ALPHA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-static {p0, p1, v0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateBitmapNormalUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateBitmapNormalRGBAUTF32([ILcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 5
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_15

    .line 390
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_15

    .line 394
    :cond_7
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([III)V

    .line 396
    sget-object p0, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_RGBA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-static {v0, p1, p0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateBitmapNormalUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateBitmapNormalRGBAUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 3
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_10

    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_10

    .line 409
    :cond_9
    sget-object v0, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_RGBA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-static {p0, p1, v0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->generateBitmapNormalUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static generateBitmapNormalUTF8(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    .line 445
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_c

    return-object v12

    .line 447
    :cond_c
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 448
    iget-object v2, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 449
    iget-object v0, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontPath:Ljava/lang/String;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 450
    iget-object v0, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontPath:Ljava/lang/String;

    iget-object v2, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bef/byteeffect/text/FontCache;->getFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_33

    .line 452
    :cond_2b
    iget-object v0, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    iget v2, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontStyle:I

    invoke-static {v0, v2}, Lcom/bef/byteeffect/text/FontCache;->getFromSystem(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 456
    :cond_33
    :goto_33
    iget v2, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->textColor:I

    .line 457
    iget v3, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->backColor:I

    .line 458
    iget v4, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowColor:I

    .line 460
    sget-object v5, Lcom/bef/byteeffect/text/TextLayoutUtils$1;->$SwitchMap$com$bef$byteeffect$text$TextLayoutUtils$COLOR_TYPE:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v13, 0x1

    if-eq v5, v13, :cond_61

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x18

    shr-int/lit8 v2, v2, 0x8

    const v6, 0xffffff

    and-int/2addr v2, v6

    add-int/2addr v5, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x18

    shr-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v6

    add-int/2addr v2, v3

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x18

    shr-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/2addr v3, v4

    :goto_5f
    move v14, v2

    goto :goto_6e

    :cond_61
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v5, v2, 0x18

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x18

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x18

    goto :goto_5f

    .line 474
    :goto_6e
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 476
    iget v4, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->paintStyle:I

    const/4 v6, 0x2

    if-eqz v4, :cond_79

    if-eq v4, v13, :cond_80

    if-eq v4, v6, :cond_7b

    :cond_79
    const/4 v4, 0x0

    goto :goto_84

    .line 485
    :cond_7b
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 486
    iget v4, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->strokeWidth:F

    goto :goto_84

    .line 481
    :cond_80
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 482
    iget v4, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->strokeWidth:F

    .line 490
    :goto_84
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 491
    iget v8, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->textAlign:I

    if-eqz v8, :cond_94

    if-eq v8, v13, :cond_92

    if-eq v8, v6, :cond_8f

    goto :goto_94

    .line 499
    :cond_8f
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_94

    .line 496
    :cond_92
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 503
    :cond_94
    :goto_94
    iget v8, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->maxLine:I

    .line 504
    iget v9, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineWidth:I

    const/16 v16, 0x0

    if-nez v9, :cond_a6

    move v8, v13

    const/16 v9, 0x800

    const/16 v10, 0x800

    const/16 v17, 0x0

    :goto_a3
    move-object/from16 v18, v12

    goto :goto_aa

    :cond_a6
    move v10, v9

    move/from16 v17, v13

    goto :goto_a3

    :goto_aa
    const/4 v12, 0x4

    if-ne v8, v13, :cond_cd

    .line 517
    iget v15, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineBreakMode:I

    if-eqz v15, :cond_ca

    if-eq v15, v13, :cond_ca

    if-eq v15, v6, :cond_c7

    const/4 v6, 0x3

    if-eq v15, v6, :cond_c4

    if-eq v15, v12, :cond_c1

    move-object/from16 v6, v18

    :goto_bc
    const/16 v15, 0x800

    const/16 v17, 0x0

    goto :goto_d1

    .line 529
    :cond_c1
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_bc

    .line 526
    :cond_c4
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_bc

    .line 523
    :cond_c7
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_bc

    .line 520
    :cond_ca
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_bc

    :cond_cd
    move-object/from16 v6, v18

    const/16 v15, 0x800

    :goto_d1
    if-le v10, v15, :cond_d4

    move v10, v15

    :cond_d4
    if-le v9, v15, :cond_d8

    const/16 v9, 0x800

    :cond_d8
    if-nez v8, :cond_dd

    const v8, 0x7fffffff

    :cond_dd
    move v15, v8

    .line 545
    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8, v13}, Landroid/text/TextPaint;-><init>(I)V

    if-eqz v0, :cond_e8

    .line 546
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 547
    :cond_e8
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 549
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 550
    iget v0, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontSize:F

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 551
    iget v0, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowRadius:F

    iget v2, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDx:F

    iget v4, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->shadowDy:F

    invoke-virtual {v8, v0, v2, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 554
    iget v0, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->letterSpacing:F

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    move-object v4, v7

    .line 558
    invoke-static {v1, v8}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v7

    if-ne v15, v13, :cond_120

    if-eqz v7, :cond_120

    .line 559
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v6, v0, :cond_120

    .line 560
    new-instance v0, Landroid/text/BoringLayout;

    iget v5, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineSpacingMult:F

    move v3, v9

    move-object v9, v6

    iget v6, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineSpacingAdd:F

    move-object v2, v8

    const/4 v8, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    goto :goto_148

    :cond_120
    move-object v2, v8

    move v3, v9

    const/4 v12, 0x0

    move-object v9, v6

    .line 565
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v12, v0, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v1, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineSpacingAdd:F

    iget v4, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineSpacingMult:F

    .line 568
    invoke-virtual {v0, v1, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 569
    invoke-virtual {v0, v13}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 570
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 571
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    .line 580
    :goto_148
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_153

    return-object v18

    :cond_153
    if-eqz v17, :cond_156

    move v10, v3

    :cond_156
    move v15, v10

    move v3, v12

    move v4, v3

    move v10, v4

    :goto_15a
    if-ge v10, v1, :cond_184

    .line 594
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x800

    if-le v5, v6, :cond_169

    goto :goto_186

    .line 597
    :cond_169
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 598
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_15a

    :cond_184
    const/16 v6, 0x800

    :goto_186
    if-le v15, v6, :cond_189

    move v15, v6

    .line 604
    :cond_189
    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    if-nez v1, :cond_190

    return-object v18

    :cond_190
    if-nez v4, :cond_194

    move v3, v6

    move v4, v13

    .line 612
    :cond_194
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ne v4, v1, :cond_1c9

    .line 615
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 616
    iget v2, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineSpacingAdd:F

    iget v5, v11, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineSpacingMult:F

    iget v6, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 617
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    add-int/lit8 v1, v4, -0x1

    .line 618
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v5, v1

    int-to-float v1, v5

    sub-float/2addr v2, v1

    cmpl-float v1, v2, v16

    if-lez v1, :cond_1c9

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    int-to-float v2, v3

    add-float/2addr v2, v1

    float-to-int v3, v2

    move/from16 v16, v1

    .line 628
    :cond_1c9
    new-instance v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;

    invoke-direct {v1}, Lcom/bef/byteeffect/text/data/TextBitmapResult;-><init>()V

    const/4 v2, 0x4

    .line 629
    iput v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->channel:I

    .line 630
    iput v4, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->lineCount:I

    .line 631
    iput v13, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->type:I

    .line 632
    new-array v2, v4, [Lcom/bef/byteeffect/text/data/CharLayout;

    iput-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    move v10, v12

    :goto_1da
    if-ge v10, v4, :cond_248

    .line 635
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    new-instance v5, Lcom/bef/byteeffect/text/data/CharLayout;

    invoke-direct {v5}, Lcom/bef/byteeffect/text/data/CharLayout;-><init>()V

    aput-object v5, v2, v10

    .line 636
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    aget-object v2, v2, v10

    .line 637
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->baseline:F

    .line 638
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    aget-object v2, v2, v10

    .line 639
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    int-to-float v7, v15

    div-float/2addr v5, v7

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->left:F

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->pos_left:F

    .line 640
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    aget-object v2, v2, v10

    .line 641
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->top:F

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->pos_top:F

    .line 642
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    aget-object v2, v2, v10

    .line 643
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    div-float/2addr v5, v7

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->right:F

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->pos_right:F

    add-int/lit8 v2, v4, -0x1

    if-ne v10, v2, :cond_230

    .line 645
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    aget-object v2, v2, v10

    .line 646
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    int-to-float v5, v5

    add-float v5, v5, v16

    div-float/2addr v5, v6

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->bottom:F

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->pos_bottom:F

    goto :goto_23e

    .line 648
    :cond_230
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    aget-object v2, v2, v10

    .line 649
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->bottom:F

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->pos_bottom:F

    .line 651
    :goto_23e
    iget-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    aget-object v2, v2, v10

    const/4 v5, -0x2

    iput v5, v2, Lcom/bef/byteeffect/text/data/CharLayout;->charCode:I

    add-int/lit8 v10, v10, 0x1

    goto :goto_1da

    .line 657
    :cond_248
    sget-object v2, Lcom/bef/byteeffect/text/TextLayoutUtils$1;->$SwitchMap$com$bef$byteeffect$text$TextLayoutUtils$COLOR_TYPE:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v13, :cond_25c

    .line 664
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x4

    .line 665
    iput v4, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->channel:I

    goto :goto_264

    .line 659
    :cond_25c
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 660
    iput v13, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->channel:I

    .line 669
    :goto_264
    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 671
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 672
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 673
    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v12, v12, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 675
    invoke-virtual {v0, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 688
    iput-object v2, v1, Lcom/bef/byteeffect/text/data/TextBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    .line 690
    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static generateTextAutoSizedNeonBitmap(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 15
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->splitLyric(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_120

    if-nez p1, :cond_e

    goto/16 :goto_120

    .line 172
    :cond_e
    new-instance p0, Landroid/text/TextPaint;

    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    .line 173
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x1

    .line 174
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object v2, p1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 176
    iget-object v2, p1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bef/byteeffect/text/FontCache;->getFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 180
    :cond_37
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gez v2, :cond_4a

    move v2, v1

    goto :goto_4b

    :cond_4a
    move v2, v3

    .line 184
    :goto_4b
    new-instance v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;

    invoke-direct {v4}, Lcom/bef/byteeffect/text/data/TextBitmapResult;-><init>()V

    .line 185
    iput v1, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->channel:I

    .line 186
    array-length v1, v0

    iput v1, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->lineCount:I

    .line 187
    iput v3, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->type:I

    .line 188
    array-length v1, v0

    new-array v1, v1, [Lcom/bef/byteeffect/text/data/CharLayout;

    iput-object v1, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    .line 190
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v5, 0x0

    move v6, v3

    move v7, v5

    .line 192
    :goto_62
    array-length v8, v0

    if-ge v6, v8, :cond_a8

    .line 194
    aget-object v8, v0, v6

    const/16 v9, 0xa

    int-to-float v10, v9

    .line 195
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, v8, v3, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    .line 197
    :goto_75
    iget v11, p1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineWidth:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_8b

    add-int/lit8 v9, v9, 0x2

    int-to-float v10, v9

    .line 199
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, v8, v3, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    goto :goto_75

    :cond_8b
    add-int/lit8 v9, v9, -0x2

    .line 202
    aput v9, v1, v6

    int-to-float v8, v9

    .line 203
    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    if-eqz v2, :cond_9f

    .line 208
    iget v9, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    :goto_9d
    sub-float/2addr v9, v8

    goto :goto_a4

    .line 210
    :cond_9f
    iget v9, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    goto :goto_9d

    :goto_a4
    add-float/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 215
    :cond_a8
    iget p1, p1, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineWidth:I

    float-to-int v6, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 216
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 217
    iput-object p1, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    move p1, v3

    move v8, v5

    .line 220
    :goto_ba
    array-length v9, v0

    if-ge p1, v9, :cond_11f

    .line 221
    aget-object v9, v0, p1

    .line 222
    aget v10, v1, p1

    int-to-float v10, v10

    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 231
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-static {v9, v3, v11, p0, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 232
    invoke-virtual {v9, v11}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    const/high16 v11, 0x3f800000    # 1.0f

    .line 233
    invoke-virtual {v9, v5, v11}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    .line 234
    invoke-virtual {v9, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    .line 235
    invoke-virtual {v9}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v9

    .line 239
    invoke-virtual {v9, v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 241
    new-instance v9, Lcom/bef/byteeffect/text/data/CharLayout;

    invoke-direct {v9}, Lcom/bef/byteeffect/text/data/CharLayout;-><init>()V

    if-eqz v2, :cond_fe

    .line 244
    iget v12, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v12, v10

    sub-float v10, v8, v10

    div-float/2addr v10, v7

    .line 245
    iput v10, v9, Lcom/bef/byteeffect/text/data/CharLayout;->baseline:F

    goto :goto_108

    .line 248
    :cond_fe
    iget v12, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v12, v10

    sub-float v10, v8, v10

    div-float/2addr v10, v7

    .line 249
    iput v10, v9, Lcom/bef/byteeffect/text/data/CharLayout;->baseline:F

    :goto_108
    div-float v10, v8, v7

    .line 251
    iput v10, v9, Lcom/bef/byteeffect/text/data/CharLayout;->top:F

    add-float/2addr v8, v12

    div-float v10, v8, v7

    .line 252
    iput v10, v9, Lcom/bef/byteeffect/text/data/CharLayout;->bottom:F

    .line 253
    iput v5, v9, Lcom/bef/byteeffect/text/data/CharLayout;->left:F

    .line 254
    iput v11, v9, Lcom/bef/byteeffect/text/data/CharLayout;->right:F

    .line 256
    iget-object v10, v4, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    aput-object v9, v10, p1

    .line 259
    invoke-virtual {v6, v5, v12}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_ba

    :cond_11f
    return-object v4

    :cond_120
    :goto_120
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateTextAutoSizedShakeBitmap(Ljava/lang/String;Lcom/bef/byteeffect/text/data/TextLayoutParam;)Lcom/bef/byteeffect/text/data/TextBitmapResult;
    .registers 22
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    move-object/from16 v0, p1

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/bef/byteeffect/text/TextLayoutUtils;->lyricShakeSplit(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_e
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v4, v0, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v4, v0, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 81
    iget-object v4, v0, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/bef/byteeffect/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/bef/byteeffect/text/FontCache;->getFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    :cond_32
    iget v4, v0, Lcom/bef/byteeffect/text/data/TextLayoutParam;->fontSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    cmpg-float v4, v4, v5

    const/4 v5, 0x0

    if-gez v4, :cond_4a

    move v4, v3

    goto :goto_4b

    :cond_4a
    move v4, v5

    .line 87
    :goto_4b
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget v8, v0, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineWidth:I

    int-to-float v8, v8

    const/4 v9, 0x0

    move v10, v5

    move v11, v10

    move v12, v9

    .line 96
    :goto_5b
    array-length v13, v1

    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v10, v13, :cond_8f

    .line 97
    aget-object v13, v1, v10

    .line 100
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    float-to-int v3, v8

    invoke-static {v13, v5, v15, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 101
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 102
    invoke-virtual {v3, v9, v14}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 103
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v13

    add-int/2addr v11, v13

    .line 109
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v12, v3

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    goto :goto_5b

    .line 114
    :cond_8f
    new-instance v2, Lcom/bef/byteeffect/text/data/TextBitmapResult;

    invoke-direct {v2}, Lcom/bef/byteeffect/text/data/TextBitmapResult;-><init>()V

    const/4 v3, 0x1

    .line 115
    iput v3, v2, Lcom/bef/byteeffect/text/data/TextBitmapResult;->channel:I

    .line 116
    iput v11, v2, Lcom/bef/byteeffect/text/data/TextBitmapResult;->lineCount:I

    .line 117
    iput v5, v2, Lcom/bef/byteeffect/text/data/TextBitmapResult;->type:I

    .line 118
    new-array v3, v11, [Lcom/bef/byteeffect/text/data/CharLayout;

    iput-object v3, v2, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    .line 121
    iget v3, v0, Lcom/bef/byteeffect/text/data/TextLayoutParam;->lineWidth:I

    float-to-int v10, v12

    sget-object v11, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 122
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    iput-object v3, v2, Lcom/bef/byteeffect/text/data/TextBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    move v3, v5

    move v13, v3

    move v11, v9

    .line 127
    :goto_b2
    array-length v15, v1

    if-ge v3, v15, :cond_163

    .line 128
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/text/Layout;->getHeight()I

    move-result v15

    int-to-float v15, v15

    .line 129
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/text/StaticLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v15, v5

    const/4 v14, 0x0

    .line 131
    :goto_ce
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/text/StaticLayout;

    invoke-virtual/range {v17 .. v17}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    if-ge v14, v9, :cond_13e

    .line 132
    new-instance v9, Lcom/bef/byteeffect/text/data/CharLayout;

    invoke-direct {v9}, Lcom/bef/byteeffect/text/data/CharLayout;-><init>()V

    .line 133
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    check-cast v1, Landroid/text/StaticLayout;

    invoke-virtual {v1, v14}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    if-eqz v4, :cond_f9

    move/from16 v17, v1

    .line 137
    iget v1, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v11, v1

    div-float/2addr v1, v12

    iput v1, v9, Lcom/bef/byteeffect/text/data/CharLayout;->baseline:F

    goto :goto_102

    :cond_f9
    move/from16 v17, v1

    .line 141
    iget v1, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v11, v1

    div-float/2addr v1, v12

    iput v1, v9, Lcom/bef/byteeffect/text/data/CharLayout;->baseline:F

    :goto_102
    div-float v1, v11, v12

    .line 144
    iput v1, v9, Lcom/bef/byteeffect/text/data/CharLayout;->top:F

    add-float/2addr v11, v5

    .line 145
    iget v1, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v19, v1

    iget v1, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v1, v19, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v1, v19

    sub-float v1, v11, v1

    div-float/2addr v1, v12

    iput v1, v9, Lcom/bef/byteeffect/text/data/CharLayout;->bottom:F

    .line 146
    iget v1, v0, Lcom/bef/byteeffect/text/data/TextLayoutParam;->textAlign:I

    if-nez v1, :cond_129

    const/4 v1, 0x0

    .line 147
    iput v1, v9, Lcom/bef/byteeffect/text/data/CharLayout;->left:F

    sub-float v1, v8, v17

    div-float/2addr v1, v8

    .line 148
    iput v1, v9, Lcom/bef/byteeffect/text/data/CharLayout;->right:F

    goto :goto_132

    :cond_129
    sub-float v1, v8, v17

    div-float/2addr v1, v8

    .line 150
    iput v1, v9, Lcom/bef/byteeffect/text/data/CharLayout;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 151
    iput v1, v9, Lcom/bef/byteeffect/text/data/CharLayout;->right:F

    .line 154
    :goto_132
    iget-object v1, v2, Lcom/bef/byteeffect/text/data/TextBitmapResult;->charLayouts:[Lcom/bef/byteeffect/text/data/CharLayout;

    aput-object v9, v1, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v18

    const/4 v9, 0x0

    goto :goto_ce

    :cond_13e
    move-object/from16 v18, v1

    .line 160
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v15, v1

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v15}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    move v9, v1

    move-object/from16 v1, v18

    const/4 v5, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    goto/16 :goto_b2

    :cond_163
    return-object v2
.end method

.method public static lyricShakeSplit(Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_191

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_191

    .line 306
    :cond_a
    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 311
    :goto_30
    array-length v5, p0

    if-ge v4, v5, :cond_173

    .line 312
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3e

    goto/16 :goto_170

    .line 315
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0xa

    if-nez v5, :cond_149

    .line 318
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_59

    .line 319
    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_170

    .line 320
    :cond_59
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_68

    .line 321
    aget-object v5, p0, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_170

    .line 324
    :cond_68
    aget-object v5, p0, v4

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    rem-int/lit8 v5, v5, 0x9

    if-nez v5, :cond_7e

    move v5, v6

    goto :goto_7f

    :cond_7e
    move v5, v3

    :goto_7f
    if-eqz v5, :cond_8b

    .line 326
    aget-object v8, p0, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x9

    goto :goto_95

    :cond_8b
    aget-object v8, p0, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x9

    add-int/2addr v8, v6

    :goto_95
    move v9, v3

    :goto_96
    if-ge v9, v8, :cond_170

    const/16 v10, 0x13

    .line 328
    const-string v11, "-"

    if-nez v9, :cond_ec

    if-eqz v5, :cond_bc

    .line 333
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p0, v4

    invoke-virtual {v11, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 334
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v3, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_145

    :cond_bc
    if-ne v8, v6, :cond_d1

    .line 338
    aget-object v10, p0, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 339
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p0, v4

    invoke-virtual {v11, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_145

    .line 342
    :cond_d1
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p0, v4

    invoke-virtual {v11, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 343
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v3, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_145

    :cond_ec
    add-int/lit8 v12, v9, -0x1

    mul-int/lit8 v12, v12, 0x9

    add-int/2addr v12, v10

    add-int/lit8 v13, v8, -0x1

    if-ge v9, v13, :cond_113

    mul-int/lit8 v13, v9, 0x9

    add-int/2addr v13, v10

    .line 353
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p0, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 354
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v3, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_145

    :cond_113
    if-eqz v5, :cond_133

    mul-int/lit8 v13, v9, 0x9

    add-int/2addr v13, v10

    .line 361
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p0, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 362
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v3, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_145

    .line 365
    :cond_133
    aget-object v10, p0, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 366
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p0, v4

    invoke-virtual {v11, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_145
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_96

    .line 373
    :cond_149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    aget-object v9, p0, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v6

    if-gt v8, v7, :cond_164

    .line 374
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_170

    .line 376
    :cond_164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    :cond_170
    :goto_170
    add-int/2addr v4, v6

    goto/16 :goto_30

    .line 381
    :cond_173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_184

    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 385
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_191
    :goto_191
    const/4 p0, 0x0

    return-object p0
.end method

.method public static splitLyric(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    if-eqz p0, :cond_8b

    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8b

    .line 269
    :cond_a
    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 273
    :goto_24
    array-length v5, p0

    if-ge v3, v5, :cond_7e

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    rem-int/lit8 v6, v4, 0x5

    const/4 v7, 0x3

    rem-int/2addr v6, v7

    if-nez v6, :cond_34

    const/4 v6, 0x6

    goto :goto_36

    :cond_34
    const/16 v6, 0xa

    :goto_36
    move v8, v2

    .line 284
    :goto_37
    array-length v9, p0

    if-ge v3, v9, :cond_6e

    aget-object v9, p0, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit8 v9, v9, 0x1

    if-le v9, v6, :cond_47

    if-gt v8, v7, :cond_6e

    .line 285
    :cond_47
    aget-object v9, p0, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    add-int/lit8 v9, v3, 0x1

    .line 286
    aget-object v3, p0, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ne v9, v3, :cond_6c

    aget-object v3, p0, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_6c

    .line 288
    aget-object v3, p0, v9

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    move v3, v9

    goto :goto_37

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    .line 293
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 297
    :cond_7e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 298
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_8b
    :goto_8b
    const/4 p0, 0x0

    return-object p0
.end method
