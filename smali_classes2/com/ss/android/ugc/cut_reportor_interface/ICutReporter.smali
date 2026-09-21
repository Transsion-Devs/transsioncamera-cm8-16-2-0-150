.class public interface abstract Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;,
        Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;

.field public static final KEY_BASE_CUT:I = 0x0

.field public static final KEY_BASE_CUT_UI_IMPL:I = 0x3e8

.field public static final KEY_BASE_TEMPLATE_UI_IMPL:I = 0x7d0


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;->$$INSTANCE:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;

    sput-object v0, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;->Companion:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;

    return-void
.end method


# virtual methods
.method public abstract report(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
