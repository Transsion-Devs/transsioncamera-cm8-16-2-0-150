.class final Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/AbsServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field private listener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/android/ugc/cut_ui/AbsServiceClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/ugc/cut_ui/AbsServiceClient<",
            "TINTERFACE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/cut_ui/AbsServiceClient;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;->this$0:Lcom/ss/android/ugc/cut_ui/AbsServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;->listener:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINTERFACE;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;->listener:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;->listener:Lkotlin/jvm/functions/Function1;

    return-void
.end method
