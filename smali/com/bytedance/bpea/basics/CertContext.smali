.class public final Lcom/bytedance/bpea/basics/CertContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private entryCategory:Ljava/lang/Integer;

.field private entryDataTypes:[Ljava/lang/String;

.field private final entryExtraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private entryToken:Ljava/lang/String;

.field private timeAnchor:Lcom/bytedance/bpea/basics/TimeAnchor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/bytedance/bpea/basics/TimeAnchor;

    invoke-direct {v0}, Lcom/bytedance/bpea/basics/TimeAnchor;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bpea/basics/CertContext;->timeAnchor:Lcom/bytedance/bpea/basics/TimeAnchor;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bpea/basics/CertContext;->entryExtraInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/bytedance/bpea/basics/CertContext;->entryExtraInfo:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getEntryCategory()Ljava/lang/Integer;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/bytedance/bpea/basics/CertContext;->entryCategory:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getEntryDataTypes()[Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/bytedance/bpea/basics/CertContext;->entryDataTypes:[Ljava/lang/String;

    return-object p0
.end method

.method public final getEntryToken()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/bytedance/bpea/basics/CertContext;->entryToken:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/bytedance/bpea/basics/CertContext;->entryExtraInfo:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getTimeAnchor()Lcom/bytedance/bpea/basics/TimeAnchor;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/bytedance/bpea/basics/CertContext;->timeAnchor:Lcom/bytedance/bpea/basics/TimeAnchor;

    return-object p0
.end method

.method public final setEntryCategory(Ljava/lang/Integer;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/bytedance/bpea/basics/CertContext;->entryCategory:Ljava/lang/Integer;

    return-void
.end method

.method public final setEntryDataTypes([Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/bytedance/bpea/basics/CertContext;->entryDataTypes:[Ljava/lang/String;

    return-void
.end method

.method public final setEntryToken(Ljava/lang/String;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/bytedance/bpea/basics/CertContext;->entryToken:Ljava/lang/String;

    return-void
.end method

.method public final setTimeAnchor(Lcom/bytedance/bpea/basics/TimeAnchor;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/bytedance/bpea/basics/CertContext;->timeAnchor:Lcom/bytedance/bpea/basics/TimeAnchor;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[entryToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/bpea/basics/CertContext;->entryToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";entryDataTypes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/bpea/basics/CertContext;->entryDataTypes:[Ljava/lang/String;

    if-eqz v1, :cond_22

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.util.Arrays.toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";entryCategory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/bpea/basics/CertContext;->entryCategory:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";entryExtraInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/bpea/basics/CertContext;->entryExtraInfo:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
