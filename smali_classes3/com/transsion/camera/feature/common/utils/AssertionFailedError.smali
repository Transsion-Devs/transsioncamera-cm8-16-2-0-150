.class public Lcom/transsion/camera/feature/common/utils/AssertionFailedError;
.super Ljava/lang/AssertionError;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 14
    invoke-static {p1}, Lcom/transsion/camera/feature/common/utils/AssertionFailedError;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    .line 18
    const-string p0, ""

    :cond_4
    return-object p0
.end method
