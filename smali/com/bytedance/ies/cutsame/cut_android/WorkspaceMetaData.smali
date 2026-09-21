.class public final Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private final source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->name:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->source:Ljava/lang/String;

    .line 200
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->type:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->name:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->source:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->type:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;
    .registers 4

    const-string p0, "type"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->source:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->type:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSource()Ljava/lang/String;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->source:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->type:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkspaceMetaData(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
