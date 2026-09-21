.class Lcom/obs/services/internal/service/ObsFileService$SetAccessLabelJson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/service/ObsFileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetAccessLabelJson"
.end annotation


# instance fields
.field private accesslabel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/obs/services/internal/service/ObsFileService;


# direct methods
.method private constructor <init>(Lcom/obs/services/internal/service/ObsFileService;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/obs/services/internal/service/ObsFileService$SetAccessLabelJson;->this$0:Lcom/obs/services/internal/service/ObsFileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/internal/service/ObsFileService;Lcom/obs/services/internal/service/ObsFileService$1;)V
    .registers 3

    .line 240
    invoke-direct {p0, p1}, Lcom/obs/services/internal/service/ObsFileService$SetAccessLabelJson;-><init>(Lcom/obs/services/internal/service/ObsFileService;)V

    return-void
.end method


# virtual methods
.method public getAccesslabel()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object p0, p0, Lcom/obs/services/internal/service/ObsFileService$SetAccessLabelJson;->accesslabel:Ljava/util/List;

    return-object p0
.end method

.method public setAccesslabel(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/obs/services/internal/service/ObsFileService$SetAccessLabelJson;->accesslabel:Ljava/util/List;

    return-void
.end method
