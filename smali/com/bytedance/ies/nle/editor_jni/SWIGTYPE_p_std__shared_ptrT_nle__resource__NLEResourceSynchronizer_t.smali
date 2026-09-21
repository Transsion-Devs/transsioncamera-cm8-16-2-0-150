.class public Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceSynchronizer_t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceSynchronizer_t;->swigCPtr:J

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceSynchronizer_t;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceSynchronizer_t;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 23
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceSynchronizer_t;->swigCPtr:J

    return-wide v0
.end method
