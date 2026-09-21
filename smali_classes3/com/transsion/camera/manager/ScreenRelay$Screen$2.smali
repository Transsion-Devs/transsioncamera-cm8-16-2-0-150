.class final enum Lcom/transsion/camera/manager/ScreenRelay$Screen$2;
.super Lcom/transsion/camera/manager/ScreenRelay$Screen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ScreenRelay$Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/manager/ScreenRelay$Screen;-><init>(Ljava/lang/String;ILcom/transsion/camera/manager/ScreenRelay-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/transsion/camera/manager/ScreenRelay-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/ScreenRelay$Screen$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 45
    const-string p0, "PRIMARY"

    return-object p0
.end method
