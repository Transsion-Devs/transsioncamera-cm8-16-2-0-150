.class public final Lcom/ss/android/ugc/cut_ui/AbsServiceClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/cut_ui/AbsServiceClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Lcom/ss/android/ugc/cut_ui/InterfaceCreator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/cut_ui/AbsServiceClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/ugc/cut_ui/AbsServiceClient<",
            "TINTERFACE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/cut_ui/AbsServiceClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/cut_ui/AbsServiceClient<",
            "TINTERFACE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$1;->this$0:Lcom/ss/android/ugc/cut_ui/AbsServiceClient;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$1;->this$0:Lcom/ss/android/ugc/cut_ui/AbsServiceClient;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->setup$default(Lcom/ss/android/ugc/cut_ui/AbsServiceClient;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$1;->this$0:Lcom/ss/android/ugc/cut_ui/AbsServiceClient;

    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->release()V

    return-void
.end method
