.class public Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputArgs"
.end annotation


# instance fields
.field public final data:Ljava/lang/String;

.field public final schema:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;Ljava/lang/String;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->schema:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    .line 25
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->data:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;
    .registers 3

    if-eqz p0, :cond_23

    .line 30
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_23

    const/4 v1, 0x0

    .line 33
    :try_start_b
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->valueOf(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    move-result-object v1

    add-int/lit8 v0, v0, 0x3

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 35
    new-instance v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;

    invoke-direct {v0, v1, p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;-><init>(Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method
