.class public final Lcom/cutsame/solution/config/AuthorityConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/config/AuthorityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final audioAppKey(Ljava/lang/String;)Lcom/cutsame/solution/config/AuthorityConfig$Builder;
    .registers 3

    const-string v0, "audioAppKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final audioToken(Ljava/lang/String;)Lcom/cutsame/solution/config/AuthorityConfig$Builder;
    .registers 3

    const-string v0, "audioToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final authorityListener(Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;)Lcom/cutsame/solution/config/AuthorityConfig$Builder;
    .registers 3

    const-string v0, "authorityListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->f:Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;

    return-object p0
.end method

.method public final build()Lcom/cutsame/solution/config/AuthorityConfig;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getLicensePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 4
    invoke-virtual {p0}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getAudioAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 7
    invoke-virtual {p0}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getAudioToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 10
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    invoke-virtual {v0}, Lcom/cutsame/solution/init/CutSameSolution;->getTAG$CutSameIF_release()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthorityConfig: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/cutsame/solution/config/AuthorityConfig;

    invoke-direct {v0, p0}, Lcom/cutsame/solution/config/AuthorityConfig;-><init>(Lcom/cutsame/solution/config/AuthorityConfig$Builder;)V

    return-object v0

    .line 12
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "audioToken is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "audioAppKey is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "licensePath is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAudioAppKey()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->b:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "audioAppKey"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAudioToken()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->c:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "audioToken"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAuthorityListener()Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->f:Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;

    return-object p0
.end method

.method public final getLicensePath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->a:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "licensePath"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVolcAccessKey()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getVolcSecretKey()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final licensePath(Ljava/lang/String;)Lcom/cutsame/solution/config/AuthorityConfig$Builder;
    .registers 3

    const-string v0, "licensePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "{\"licensePath\":\""

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getLicensePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"audioAppKey\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getAudioAppKey()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"audioToken\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->getAudioToken()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"volcAccessKey\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"volcSecretKey\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p0, p0, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->e:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
