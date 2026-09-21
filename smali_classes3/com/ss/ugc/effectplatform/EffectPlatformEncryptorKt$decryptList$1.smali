.class final Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt;->decryptList(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cryptKey:Ljava/lang/String;

.field final synthetic $this_decryptList:Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$1;->$this_decryptList:Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$1;->$cryptKey:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$1;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$1;->$this_decryptList:Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$1;->$cryptKey:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    const-string p0, ""

    return-object p0
.end method
