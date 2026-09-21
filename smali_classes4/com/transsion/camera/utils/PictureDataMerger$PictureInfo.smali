.class public Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/PictureDataMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureInfo"
.end annotation


# instance fields
.field private mAppendingBytes:Ljava/util/List;

.field private mDataCount:I

.field private mOriginalBytes:[B

.field private mUsage:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mDataCount:I

    return-void
.end method


# virtual methods
.method public addAppendingBytes([B)Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mAppendingBytes:Ljava/util/List;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mAppendingBytes:Ljava/util/List;

    .line 82
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mAppendingBytes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAppendingBytes()Ljava/util/List;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mAppendingBytes:Ljava/util/List;

    return-object p0
.end method

.method public getOriginalBytes()[B
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mOriginalBytes:[B

    return-object p0
.end method

.method public setOriginalBytes([B)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mOriginalBytes:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mOriginalBytes:[B

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mAppendingBytes:Ljava/util/List;

    if-nez v0, :cond_9

    goto :goto_68

    .line 123
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string v1, "meta["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "usage:"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mUsage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "original:"

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mOriginalBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appended:"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 128
    :goto_36
    iget-object v3, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mAppendingBytes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 129
    iget-object v3, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mAppendingBytes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    iget-object v3, p0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->mAppendingBytes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_56

    move-object v3, v1

    goto :goto_58

    :cond_56
    const-string v3, ","

    :goto_58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 132
    :cond_5e
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_68
    :goto_68
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
