.class public abstract Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub;->Companion:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method
