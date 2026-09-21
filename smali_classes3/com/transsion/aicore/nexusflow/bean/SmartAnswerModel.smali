.class public Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mBotNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "botNickName"
    .end annotation
.end field

.field public mCallerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "callerName"
    .end annotation
.end field

.field public mDialogHistory:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dialogHistory"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mMasterNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "masterNickName"
    .end annotation
.end field

.field public mPresetContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "presetContent"
    .end annotation
.end field

.field public mQuery:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "query"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mDialogHistory:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mCallerName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mMasterNickName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mBotNickName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mDialogHistory:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mCallerName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mMasterNickName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mBotNickName:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mPresetContent:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerModel;->mQuery:Ljava/lang/String;

    return-void
.end method
