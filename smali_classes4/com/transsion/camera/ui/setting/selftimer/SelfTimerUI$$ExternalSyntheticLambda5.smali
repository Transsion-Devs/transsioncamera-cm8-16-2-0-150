.class public final synthetic Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onLoadComplete()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->$r8$lambda$-EIj7xRWOtSrO1YAaWVu1RyNgDg(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/Runnable;)V

    return-void
.end method
