.class public Lcom/ss/android/vesdk/runtime/cloudconfig/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TYPE_FLOAT:I = 0x1

.field public static final TYPE_INT:I


# instance fields
.field public final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final key:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITT;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/Config;->key:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/Config;->type:I

    .line 27
    iput-object p3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/Config;->defaultValue:Ljava/lang/Object;

    return-void
.end method
