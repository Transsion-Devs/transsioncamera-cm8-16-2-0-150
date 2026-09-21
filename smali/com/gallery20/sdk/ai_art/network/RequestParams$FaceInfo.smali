.class public final Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gallery20/sdk/ai_art/network/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceInfo"
.end annotation


# instance fields
.field private final bottom:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom"
    .end annotation
.end field

.field private final faceImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "faceImageUrl"
    .end annotation
.end field

.field private final left:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "left"
    .end annotation
.end field

.field private final right:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "right"
    .end annotation
.end field

.field private final top:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top"
    .end annotation
.end field


# direct methods
.method public constructor <init>(FFFFLjava/lang/String;)V
    .registers 7

    const-string v0, "faceImageUrl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->left:F

    .line 31
    iput p2, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->top:F

    .line 33
    iput p3, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->right:F

    .line 35
    iput p4, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->bottom:F

    .line 37
    iput-object p5, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->faceImageUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;FFFFLjava/lang/String;ILjava/lang/Object;)Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget p1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->left:F

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->top:F

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget p3, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->right:F

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget p4, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->bottom:F

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget-object p5, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->faceImageUrl:Ljava/lang/String;

    :cond_1e
    move p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->copy(FFFFLjava/lang/String;)Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 1

    iget p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->left:F

    return p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->top:F

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->right:F

    return p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->bottom:F

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->faceImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(FFFFLjava/lang/String;)Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;
    .registers 12

    const-string p0, "faceImageUrl"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;-><init>(FFFFLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->left:F

    iget v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->left:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->top:F

    iget v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->top:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->right:F

    iget v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->right:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->bottom:F

    iget v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->bottom:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_38

    return v2

    :cond_38
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->faceImageUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->faceImageUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getBottom()F
    .registers 1

    .line 35
    iget p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->bottom:F

    return p0
.end method

.method public final getFaceImageUrl()Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->faceImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getLeft()F
    .registers 1

    .line 29
    iget p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->left:F

    return p0
.end method

.method public final getRight()F
    .registers 1

    .line 33
    iget p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->right:F

    return p0
.end method

.method public final getTop()F
    .registers 1

    .line 31
    iget p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->top:F

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->left:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->top:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->right:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->bottom:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->faceImageUrl:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceInfo(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", faceImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->faceImageUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
