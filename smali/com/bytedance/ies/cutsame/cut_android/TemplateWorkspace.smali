.class public final Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace$Companion;

.field private static final EmptyMetadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;


# instance fields
.field private final id:Ljava/lang/String;

.field private final lastModifyTime:J

.field private metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->Companion:Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace$Companion;

    .line 187
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->EmptyMetadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;)V
    .registers 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->id:Ljava/lang/String;

    .line 183
    iput-wide p2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->lastModifyTime:J

    .line 184
    iput-object p4, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_6

    .line 184
    sget-object p4, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->EmptyMetadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    .line 181
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;-><init>(Ljava/lang/String;JLcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;)V

    return-void
.end method

.method public static final synthetic access$getEmptyMetadata$cp()Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;
    .registers 1

    .line 181
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->EmptyMetadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;Ljava/lang/String;JLcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-wide p2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->lastModifyTime:J

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget-object p4, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->copy(Ljava/lang/String;JLcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;)Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->lastModifyTime:J

    return-wide v0
.end method

.method public final component3()Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;JLcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;)Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;
    .registers 5

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "metadata"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;-><init>(Ljava/lang/String;JLcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->lastModifyTime:J

    iget-wide v5, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->lastModifyTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    return v2

    :cond_2b
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastModifyTime()J
    .registers 3

    .line 183
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->lastModifyTime:J

    return-wide v0
.end method

.method public final getMetadata()Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->lastModifyTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setMetadata(Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemplateWorkspace(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->lastModifyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->metadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
