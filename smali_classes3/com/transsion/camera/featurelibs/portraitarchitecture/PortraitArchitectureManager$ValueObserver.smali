.class final Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;Landroid/os/Handler;)V
    .registers 3

    .line 267
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    .line 268
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    move v2, v1

    .line 273
    :cond_15
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueObserver onChange  mode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "     selfChange = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  uri = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_57

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$minit(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetobserver(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_57
    return-void
.end method
