.class public Lcom/ss/android/ttve/common/TEDefine$TEFilterDurationType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/common/TEDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TEFilterDurationType"
.end annotation


# static fields
.field public static final TEFilterDurationType_Fix_Time:I = 0x0

.field public static final TEFilterDurationType_Follow_Clip:I = 0x1

.field public static final TEFilterDurationType_Follow_Record:I = 0x2

.field public static final TEFilterDurationType_Unknown:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/common/TEDefine;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttve/common/TEDefine;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/ss/android/ttve/common/TEDefine$TEFilterDurationType;->this$0:Lcom/ss/android/ttve/common/TEDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
