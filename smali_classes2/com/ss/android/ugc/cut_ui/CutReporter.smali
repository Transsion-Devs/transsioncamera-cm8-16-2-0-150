.class public abstract Lcom/ss/android/ugc/cut_ui/CutReporter;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/CutReporter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/android/ugc/cut_ui/CutReporter$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutReporter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_ui/CutReporter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutReporter;->Companion:Lcom/ss/android/ugc/cut_ui/CutReporter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeToIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/ss/android/ugc/cut_ui/IBinderWrapper;

    invoke-direct {v0, p0}, Lcom/ss/android/ugc/cut_ui/IBinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method
