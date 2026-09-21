.class public final Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final changeType:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

.field private final newNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

.field private final oriNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;


# direct methods
.method public constructor <init>(Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;Lcom/bytedance/ies/nle/editor_jni/NLENode;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V
    .registers 5

    const-string v0, "changeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oriNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newNode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->changeType:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    iput-object p2, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->oriNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    iput-object p3, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->newNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;Lcom/bytedance/ies/nle/editor_jni/NLENode;Lcom/bytedance/ies/nle/editor_jni/NLENode;ILjava/lang/Object;)Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->changeType:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->oriNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->newNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->copy(Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;Lcom/bytedance/ies/nle/editor_jni/NLENode;Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->changeType:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->oriNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    return-object p0
.end method

.method public final component3()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->newNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;Lcom/bytedance/ies/nle/editor_jni/NLENode;Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;
    .registers 4

    const-string p0, "changeType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "oriNode"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newNode"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;-><init>(Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;Lcom/bytedance/ies/nle/editor_jni/NLENode;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->changeType:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    iget-object v3, p1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->changeType:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->oriNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    iget-object v3, p1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->oriNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->newNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    iget-object p1, p1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->newNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->changeType:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    return-object p0
.end method

.method public final getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->newNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    return-object p0
.end method

.method public final getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->oriNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->changeType:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->oriNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->newNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeChangeInfo(changeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->changeType:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oriNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->oriNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->newNode:Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
