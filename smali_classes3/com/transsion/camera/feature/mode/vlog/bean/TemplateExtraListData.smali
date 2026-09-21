.class public Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private align_mode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "align_mode"
    .end annotation
.end field

.field private extraDataList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fragments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;->align_mode:Ljava/lang/String;

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;->extraDataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getAlign_mode()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;->align_mode:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraDataList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;->extraDataList:Ljava/util/List;

    return-object p0
.end method

.method public setAlign_mode(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;->align_mode:Ljava/lang/String;

    return-void
.end method

.method public setExtraDataList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;->extraDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;->extraDataList:Ljava/util/List;

    return-void
.end method
