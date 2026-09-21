.class public final synthetic Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-static {p1, p2}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->$r8$lambda$9_MVIHOtzpzX9niWP8ogU5iY6yw(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method
