.class public final synthetic Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    check-cast p1, Lorg/koin/core/KoinApplication;

    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->$r8$lambda$JU2_jkORWGxeU7zEP-6rgS8zhms(Landroid/content/Context;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
