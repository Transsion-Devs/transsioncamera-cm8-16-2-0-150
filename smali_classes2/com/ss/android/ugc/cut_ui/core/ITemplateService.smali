.class public interface abstract Lcom/ss/android/ugc/cut_ui/core/ITemplateService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/core/ITemplateService$Companion;,
        Lcom/ss/android/ugc/cut_ui/core/ITemplateService$Stub;,
        Lcom/ss/android/ugc/cut_ui/core/ITemplateService$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/android/ugc/cut_ui/core/ITemplateService$Companion;

.field public static final INTERFACE:Ljava/lang/String; = "com.ss.android.ugc.cut_ui.CUT_SERVICE"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/ss/android/ugc/cut_ui/core/ITemplateService$Companion;->$$INSTANCE:Lcom/ss/android/ugc/cut_ui/core/ITemplateService$Companion;

    sput-object v0, Lcom/ss/android/ugc/cut_ui/core/ITemplateService;->Companion:Lcom/ss/android/ugc/cut_ui/core/ITemplateService$Companion;

    return-void
.end method


# virtual methods
.method public abstract clearTemplateCache()V
.end method

.method public abstract createTemplatePlayer()Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;
.end method

.method public abstract obtainTemplateSource(Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;)Lcom/ss/android/ugc/cut_ui/core/ITemplateSource;
.end method

.method public abstract setReporter(Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;)V
.end method
