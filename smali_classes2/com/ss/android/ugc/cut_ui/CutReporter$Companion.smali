.class public final Lcom/ss/android/ugc/cut_ui/CutReporter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/CutReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/CutReporter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final readFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/ss/android/ugc/cut_ui/CutReporter;
    .registers 3

    const-string p0, "intent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extraKey"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/cut_ui/IBinderWrapper;

    const/4 p1, 0x0

    if-nez p0, :cond_15

    move-object p0, p1

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/IBinderWrapper;->getIBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 14
    :goto_19
    instance-of p2, p0, Lcom/ss/android/ugc/cut_ui/CutReporter;

    if-eqz p2, :cond_20

    .line 15
    check-cast p0, Lcom/ss/android/ugc/cut_ui/CutReporter;

    return-object p0

    :cond_20
    return-object p1
.end method
