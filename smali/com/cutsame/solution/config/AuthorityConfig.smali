.class public final Lcom/cutsame/solution/config/AuthorityConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/config/AuthorityConfig$Builder;,
        Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/config/AuthorityConfig$Builder;)V
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getLicensePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cutsame/solution/config/AuthorityConfig;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getAudioAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cutsame/solution/config/AuthorityConfig;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getAudioToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cutsame/solution/config/AuthorityConfig;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getVolcAccessKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_23

    move-object v0, v1

    :cond_23
    iput-object v0, p0, Lcom/cutsame/solution/config/AuthorityConfig;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getVolcSecretKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object v1, v0

    :goto_2d
    iput-object v1, p0, Lcom/cutsame/solution/config/AuthorityConfig;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getAuthorityListener()Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;

    move-result-object p1

    iput-object p1, p0, Lcom/cutsame/solution/config/AuthorityConfig;->f:Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;

    return-void
.end method


# virtual methods
.method public final getAudioAppKey()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getAudioToken()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getAuthorityListener()Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig;->f:Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;

    return-object p0
.end method

.method public final getLicensePath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig;->a:Ljava/lang/String;

    return-object p0
.end method
