.class public final synthetic Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEListenerSeek;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onSeekDone(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/cutsame/solution/player/CutSamePlayer;->a(Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method
