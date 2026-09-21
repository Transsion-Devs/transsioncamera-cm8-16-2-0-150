.class public final Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;

.field public static final KEY_BASE_CUT:I = 0x0

.field public static final KEY_BASE_CUT_UI_IMPL:I = 0x3e8

.field public static final KEY_BASE_TEMPLATE_UI_IMPL:I = 0x7d0


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;->$$INSTANCE:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
