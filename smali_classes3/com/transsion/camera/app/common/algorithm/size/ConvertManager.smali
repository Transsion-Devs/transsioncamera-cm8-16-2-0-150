.class final Lcom/transsion/camera/app/common/algorithm/size/ConvertManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/size/IConvert;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConvert:Lcom/transsion/camera/app/common/algorithm/size/IConvert;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ConvertManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/size/ConvertManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/size/ConfigConvert;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/algorithm/size/ConfigConvert;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/algorithm/size/ConfigConvert;->hasConfig()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/size/ConvertManager;->mConvert:Lcom/transsion/camera/app/common/algorithm/size/IConvert;

    return-void

    .line 32
    :cond_11
    sget-object p1, Lcom/transsion/camera/app/common/algorithm/size/ConvertManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "convert picture size is not config"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/transsion/camera/app/common/algorithm/size/AQuarterConvert;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/algorithm/size/AQuarterConvert;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/algorithm/size/ConvertManager;->mConvert:Lcom/transsion/camera/app/common/algorithm/size/IConvert;

    return-void
.end method


# virtual methods
.method public convert(Landroid/util/Size;)Landroid/util/Size;
    .registers 2

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/size/ConvertManager;->mConvert:Lcom/transsion/camera/app/common/algorithm/size/IConvert;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/size/IConvert;->convert(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method
