.class Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformRunnable"
.end annotation


# instance fields
.field mCoreVersion:I

.field mFreqFactor:I

.field mIntensityDelta:I

.field mPattern:Ljava/lang/String;

.field final synthetic this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;


# direct methods
.method constructor <init>(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;Ljava/lang/String;III)V
    .registers 6

    iput-object p1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->mPattern:Ljava/lang/String;

    iput p3, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->mIntensityDelta:I

    iput p4, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->mFreqFactor:I

    iput p5, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->mCoreVersion:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->a(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/IHapticEffectPerformer;

    move-result-object v0

    iget-object v1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->mPattern:Ljava/lang/String;

    iget v2, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->mIntensityDelta:I

    iget v3, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->mFreqFactor:I

    iget p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;->mCoreVersion:I

    invoke-static {v1, v2, v3, p0}, Lcom/apprichtap/haptic/base/a;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/apprichtap/haptic/player/IHapticEffectPerformer;->start(Ljava/lang/String;)V

    return-void
.end method
