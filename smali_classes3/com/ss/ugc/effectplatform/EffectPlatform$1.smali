.class public final Lcom/ss/ugc/effectplatform/EffectPlatform$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/EffectPlatform;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 110
    sget-object p0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->decrypt$default(Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;Ljava/lang/String;[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "cryptKey"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object p0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;

    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
