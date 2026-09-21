.class public final Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion$ALLOW_LIST_RULE$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final brAllowList:Ljava/util/List;

.field private final ruAllowList:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 13

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-string v10, "45973"

    const-string v11, "40781"

    const-string v0, "52310"

    const-string v1, "42494"

    const-string v2, "22435"

    const-string v3, "52308"

    const-string v4, "22428"

    const-string v5, "29412"

    const-string v6, "23202"

    const-string v7, "85256"

    const-string v8, "51522"

    const-string v9, "51092"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion$ALLOW_LIST_RULE$1;->brAllowList:Ljava/util/List;

    .line 162
    const-string v9, "240739"

    const-string v10, "203226"

    const-string v1, "52352"

    const-string v2, "42504"

    const-string v3, "50593"

    const-string v4, "249501"

    const-string v5, "22146"

    const-string v6, "166469"

    const-string v7, "221655"

    const-string v8, "234650"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion$ALLOW_LIST_RULE$1;->ruAllowList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isAllowed(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    return v1

    .line 168
    :cond_f
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleaneffect: allowlist\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EffectDiskLruCache"

    invoke-virtual {v0, v3, v2}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    # getter for: Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->effectIdSp:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {}, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->access$getEffectIdSp$cp()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v2

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/settings/Setttings;

    if-eqz v2, :cond_ab

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 170
    invoke-static {v2, p1, v5, v4, v5}, Lcom/ss/ugc/effectplatform/settings/Setttings$DefaultImpls;->getString$default(Lcom/ss/ugc/effectplatform/settings/Setttings;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 171
    const-string v4, "BR"

    invoke-virtual {p0, v4}, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion$ALLOW_LIST_RULE$1;->isCountry(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion$ALLOW_LIST_RULE$1;->brAllowList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleaneffect: allowlist\uff1aBR, key: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 174
    :cond_5f
    const-string v4, "RU"

    invoke-virtual {p0, v4}, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion$ALLOW_LIST_RULE$1;->isCountry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion$ALLOW_LIST_RULE$1;->ruAllowList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_84

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleaneffect: allowlist\uff1aRU, key: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 179
    :cond_84
    # getter for: Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->draftDIRAllowList:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {}, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->access$getDraftDIRAllowList$cp()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_ab

    .line 180
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ab

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleaneffect: allowlist\uff1adraft, key: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_ab
    return v1
.end method

.method public final isCountry(Ljava/lang/String;)Z
    .registers 4

    const-string p0, "code"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget-object p0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleaneffect: isCountry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->country:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {}, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->access$getCountry$cp()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectDiskLruCache"

    invoke-virtual {p0, v1, v0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object p0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    # getter for: Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->country:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {}, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->access$getCountry$cp()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x1

    return p0

    :cond_43
    const/4 p0, 0x0

    return p0
.end method
