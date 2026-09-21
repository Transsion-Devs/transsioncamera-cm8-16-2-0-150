.class public Lcom/youtu/ocr/ximage/GussianBlur;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mGussianWeight:[D

.field private mKernelSize:I


# direct methods
.method public constructor <init>(II)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, v0, Lcom/youtu/ocr/ximage/GussianBlur;->mKernelSize:I

    .line 10
    new-array v1, v1, [D

    iput-object v1, v0, Lcom/youtu/ocr/ximage/GussianBlur;->mGussianWeight:[D

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 12
    :goto_10
    iget v6, v0, Lcom/youtu/ocr/ximage/GussianBlur;->mKernelSize:I

    const-string v7, "xlab"

    if-ge v3, v6, :cond_70

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v3

    int-to-double v8, v6

    .line 14
    iget-object v6, v0, Lcom/youtu/ocr/ximage/GussianBlur;->mGussianWeight:[D

    move/from16 v10, p2

    int-to-double v11, v10

    div-double v13, v8, v11

    const-wide/16 v15, 0x0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const-wide/high16 v17, -0x4020000000000000L    # -0.5

    mul-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    const-wide v17, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    div-double v13, v13, v17

    div-double/2addr v13, v11

    aput-wide v13, v6, v3

    cmpl-double v6, v8, v15

    if-lez v6, :cond_4a

    .line 16
    iget-object v6, v0, Lcom/youtu/ocr/ximage/GussianBlur;->mGussianWeight:[D

    aget-wide v8, v6, v3

    mul-double/2addr v8, v1

    aput-wide v8, v6, v3

    .line 18
    :cond_4a
    iget-object v1, v0, Lcom/youtu/ocr/ximage/GussianBlur;->mGussianWeight:[D

    aget-wide v1, v1, v3

    add-double/2addr v4, v1

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/youtu/ocr/ximage/GussianBlur;->mGussianWeight:[D

    aget-wide v8, v2, v3

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 21
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getmGussianWeight()[D
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/youtu/ocr/ximage/GussianBlur;->mGussianWeight:[D

    return-object p0
.end method
