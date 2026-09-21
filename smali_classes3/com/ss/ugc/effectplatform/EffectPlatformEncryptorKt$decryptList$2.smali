.class final Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$2;
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


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$2;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$2;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$2;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$2;->invoke(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
