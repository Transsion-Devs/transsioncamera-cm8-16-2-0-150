.class public final Lcom/gallery20/sdk/ai_art/network/RequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;
    }
.end annotation


# instance fields
.field private final faceInfo:Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "faceInfo"
    .end annotation
.end field

.field private final focusLength:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "focusLength35mm"
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private final iso:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iso"
    .end annotation
.end field

.field private final template:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "templateCode"
    .end annotation
.end field

.field private final time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageTime"
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;)V
    .registers 9

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->imageUrl:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->template:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->time:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->userId:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->iso:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->focusLength:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->faceInfo:Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/gallery20/sdk/ai_art/network/RequestParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;ILjava/lang/Object;)Lcom/gallery20/sdk/ai_art/network/RequestParams;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->imageUrl:Ljava/lang/String;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->template:Ljava/lang/String;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-object p3, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->time:Ljava/lang/String;

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->userId:Ljava/lang/String;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p5, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->iso:Ljava/lang/String;

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget-object p6, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->focusLength:Ljava/lang/String;

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-object p7, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->faceInfo:Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    :cond_2a
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/gallery20/sdk/ai_art/network/RequestParams;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;)Lcom/gallery20/sdk/ai_art/network/RequestParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->template:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->time:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->iso:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->focusLength:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->faceInfo:Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;)Lcom/gallery20/sdk/ai_art/network/RequestParams;
    .registers 16

    const-string p0, "imageUrl"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "time"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "userId"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/RequestParams;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/gallery20/sdk/ai_art/network/RequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/gallery20/sdk/ai_art/network/RequestParams;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->template:Ljava/lang/String;

    iget-object v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams;->template:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->time:Ljava/lang/String;

    iget-object v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams;->time:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->iso:Ljava/lang/String;

    iget-object v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams;->iso:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->focusLength:Ljava/lang/String;

    iget-object v3, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams;->focusLength:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->faceInfo:Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/network/RequestParams;->faceInfo:Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    return v2

    :cond_59
    return v0
.end method

.method public final getFaceInfo()Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->faceInfo:Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    return-object p0
.end method

.method public final getFocusLength()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->focusLength:Ljava/lang/String;

    return-object p0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getIso()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->iso:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplate()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->template:Ljava/lang/String;

    return-object p0
.end method

.method public final getTime()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->time:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->template:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->time:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->iso:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    move v1, v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->focusLength:Ljava/lang/String;

    if-nez v1, :cond_37

    move v1, v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->faceInfo:Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    if-nez p0, :cond_43

    goto :goto_47

    :cond_43
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;->hashCode()I

    move-result v2

    :goto_47
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestParams(imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->template:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->iso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", focusLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->focusLength:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", faceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/RequestParams;->faceInfo:Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
